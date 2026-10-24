#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""insert_all.py - Insertor de textos de
"Land of Illusion Starring Mickey Mouse (Europe, Brazil) (En).sms"

Lee `texts_translated.json` (tabla principal `main_insert.tbl`) y
`texts_translated_alt.json` (bloques del banco 0x08 con fuente alternativa,
tabla `alt_insert.tbl`), recompone los bloques que lo necesiten y genera
`TR_<nombre original>` partiendo de la ROM base.

Reglas respetadas:
  * La conversion caracter -> byte la hace EXCLUSIVAMENTE `main_insert.tbl`
    (no se modifica ni se convierte nada fuera de ella).
  * Los codigos [HH] insertan el byte literal HH.
  * Si una traduccion no cabe en el hueco original, el bloque se reubica dentro
    del mismo banco y se actualiza su puntero (`lz_nametable`) o el inmediato
    del cargador (`lz_nametable_fixed`).

Uso:  python insert_all.py
"""

import json
import os
import sys

ROM_NAME = "Land of Illusion Starring Mickey Mouse (Europe, Brazil) (En).sms"
HERE = os.path.dirname(os.path.abspath(__file__))
ROM_PATH = os.path.join(HERE, ROM_NAME)
TBL_PATH = os.path.join(HERE, "main_insert.tbl")
JSON_PATH = os.path.join(HERE, "texts_translated.json")
# Tabla y textos alternativos (bloques del banco 0x08 con fuente propia).
ALT_TBL_PATH = os.path.join(HERE, "alt_insert.tbl")
ALT_JSON_PATH = os.path.join(HERE, "texts_translated_alt.json")
# Tercer juego: creditos finales (STAFF) y mensaje final (TOTAL POWER STARS).
CREDITS_TBL_PATH = os.path.join(HERE, "credits_insert.tbl")
CREDITS_JSON_PATH = os.path.join(HERE, "texts_translated_credits.json")
OUT_PATH = os.path.join(HERE, "TR_" + ROM_NAME)

STAGE_BANK_BASE = 0x70000          # offset de ROM del inicio del banco 0x1C
STAGE_BANK_END = 0x74000
ATTR = 0x08

# --- Fuentes (mismo listado que extract_all.py) ----------------------------
# (nombre, rom, metodo, tiles, bpp). Si existe `font_<nombre>_mod.png` se
# reinserta en la ROM (en su sitio o, si crece, reubicandola en el mismo banco
# para los bloques PS-RLE).
FONTS = (
    ("main",     0x21EB2, "psrle",  39, 2),
    ("small",    0x22108, "psrle",  20, 2),
    ("icons",    0x22E04, "psrle",  36, 2),
    ("credits",  0x064509, "lz",     48, 4),
    ("initial",  0x070021, "lz",     62, 4),
)
FONT_COLS = 16        # tiles por fila (igual que al extraer)
FONT_SCALE = 1        # pixeles de PNG por pixel de tile (resolucion original)


# ---------------------------------------------------------------------------
# LZ (rutina 0x088D) - decodificador y codificador
# ---------------------------------------------------------------------------
def lz_decode(data, off):
    out = bytearray()
    pos = off
    while True:
        ctl = data[pos]
        pos += 1
        for _ in range(8):
            if ctl & 1:
                out.append(data[pos])
                pos += 1
            else:
                c = data[pos]
                b = data[pos + 1]
                pos += 2
                if c == 0 and b == 0:
                    return bytes(out), pos - off
                value = ((0xF0 | (b & 0x0F)) << 8) | c
                dist = 0x10000 - value
                length = ((b & 0xF0) >> 4) + 3
                src = len(out) - dist
                for i in range(length):
                    out.append(out[src + i])
            ctl >>= 1


def _tokens(data, max_dist=0x1000, max_len=18):
    toks = []
    pos = 0
    n = len(data)
    while pos < n:
        best_len = 0
        best_dist = 0
        for d in range(1, min(max_dist, pos) + 1):
            L = 0
            while (L < max_len and pos + L < n
                   and data[pos + L] == data[pos - d + L]):
                L += 1
            if L > best_len:
                best_len = L
                best_dist = d
                if L == max_len:
                    break
        if best_len >= 3:
            value = (0x10000 - best_dist) & 0xFFFF
            b = ((best_len - 3) << 4) | ((value >> 8) & 0x0F)
            c = value & 0xFF
            toks.append(("ref", c, b))
            pos += best_len
        else:
            toks.append(("lit", data[pos]))
            pos += 1
    toks.append(("end", 0, 0))
    return toks


def lz_encode(data):
    toks = _tokens(data)
    out = bytearray()
    for i in range(0, len(toks), 8):
        group = toks[i:i + 8]
        ctl = 0
        for k, t in enumerate(group):
            if t[0] == "lit":
                ctl |= 1 << k
        out.append(ctl)
        for t in group:
            if t[0] == "lit":
                out.append(t[1])
            else:
                out.append(t[1])
                out.append(t[2])
    return bytes(out)


MAX_DIST = 0x1000
MAX_LEN = 18


def _best_matches(data):
    """Mejor back-reference (longitud, distancia) en cada posicion.

    Se indexan las posiciones por su clave de 3 bytes para no recorrer toda la
    ventana en cada byte. Devuelve (best_len, best_dist).
    """
    n = len(data)
    blen = [0] * n
    bdst = [0] * n
    table = {}
    for pos in range(n):
        bl = 0
        bd = 0
        if pos + 3 <= n:
            key = bytes(data[pos:pos + 3])
            lst = table.get(key)
            if lst is not None:
                lo = pos - MAX_DIST
                for p in lst:
                    if p < lo:
                        continue
                    d = pos - p
                    L = 0
                    while (L < MAX_LEN and pos + L < n
                           and data[pos + L] == data[p + L]):
                        L += 1
                    if L > bl or (L == bl and d < bd):
                        bl = L
                        bd = d
                        if L == MAX_LEN:
                            break
            if lst is None:
                table[key] = [pos]
            else:
                lst.append(pos)
        blen[pos] = bl if bl >= 3 else 0
        bdst[pos] = bd
    return blen, bdst


def lz_encode_opt(data):
    """Codificador LZ 0x088D optimo (programacion dinamica).

    Elige la secuencia de tokens de coste minimo (1 byte por literal, 2 por
    back-reference, mas 1 byte de control cada 8 tokens). Produce un flujo
    valido y siempre de tamano <= lz_encode().
    """
    data = bytes(data)
    n = len(data)
    blen, bdst = _best_matches(data)
    dp = [[None] * 8 for _ in range(n + 1)]
    dp[0][0] = (0, None)
    for i in range(n + 1):
        row = dp[i]
        for r in range(8):
            st = row[r]
            if st is None:
                continue
            cost = st[0]
            ctl = 1 if r == 0 else 0
            if i < n:                                   # literal
                nc = cost + ctl + 1
                nr = (r + 1) % 8
                old = dp[i + 1][nr]
                if old is None or nc < old[0]:
                    dp[i + 1][nr] = (nc, (i, r, ("lit", data[i], 0)))
            L = blen[i] if i < n else 0                 # back-references
            if L >= 3:
                value = (0x10000 - bdst[i]) & 0xFFFF
                c = value & 0xFF
                hi = (value >> 8) & 0x0F
                for ln in range(3, L + 1):
                    nc = cost + ctl + 2
                    nr = (r + 1) % 8
                    b = ((ln - 3) << 4) | hi
                    old = dp[i + ln][nr]
                    if old is None or nc < old[0]:
                        dp[i + ln][nr] = (nc, (i, r, ("ref", c, b)))
    fin_r = min((r for r in range(8) if dp[n][r] is not None),
                key=lambda r: dp[n][r][0], default=0)
    toks = []
    i, r = n, fin_r
    while i != 0 or r != 0:
        _, prev = dp[i][r]
        pi, pr, tok = prev
        toks.append(tok)
        i, r = pi, pr
    toks.reverse()
    toks.append(("end", 0, 0))
    out = bytearray()
    for g in range(0, len(toks), 8):
        group = toks[g:g + 8]
        ctl = 0
        for k, t in enumerate(group):
            if t[0] == "lit":
                ctl |= 1 << k
        out.append(ctl)
        for t in group:
            if t[0] == "lit":
                out.append(t[1])
            else:
                out.append(t[1])
                out.append(t[2])
    return bytes(out)


# ---------------------------------------------------------------------------
# Fuentes: PNG -> tiles -> (PS-RLE / LZ) -> ROM
# ---------------------------------------------------------------------------
def psrle_decode_planes(data, off, nplanes=4, max_out=0x4000):
    """Descomprime un bloque PS-RLE de `nplanes` planos desde `off`.

    Devuelve `(planos, fin)` con los planos desempaquetados y la posicion del
    primer byte despues del ultimo terminador (espejo del decodificador de
    extract_all.py).
    """
    planes = []
    pos = off
    n = len(data)
    for _ in range(nplanes):
        out = bytearray()
        while True:
            if pos >= n:
                planes.append(bytes(out))
                return planes, pos
            c = data[pos]
            pos += 1
            if c == 0:
                break
            count = c & 0x7F
            if c & 0x80:                       # tirada de bytes literales
                out += data[pos:pos + count]
                pos += count
            else:                              # tirada de un byte repetido
                v = data[pos]
                pos += 1
                out += bytes([v]) * count
            if len(out) > max_out:
                break
        planes.append(bytes(out))
    return planes, pos


def psrle_interleave(planes, nplanes=4):
    """Entrelaza los planos: byte i pertenece al plano (i % nplanes)."""
    n = min(len(p) for p in planes)
    out = bytearray()
    for i in range(n):
        for p in range(nplanes):
            out.append(planes[p][i])
    return bytes(out)


def psrle_deinterleave(buf, nplanes=4):
    """Inverso de `psrle_interleave`."""
    planes = [bytearray() for _ in range(nplanes)]
    for i, b in enumerate(buf):
        planes[i % nplanes].append(b)
    return [bytes(p) for p in planes]


def _psrle_encode_plane(plane):
    """Codifica un plano PS-RLE con coste minimo (programacion dinamica).

    Tokens: `0nnnnnnn dd` (tirada de n bytes iguales, 2 bytes), `1nnnnnnn dd...`
    (tirada de n literales, 1+n bytes) y `00` (fin de plano, 1 byte). Produce un
    flujo tan corto como el original del juego para las fuentes sin modificar.
    """
    plane = bytes(plane)
    n = len(plane)
    INF = 1 << 30
    dp = [INF] * (n + 1)
    dp[n] = 1                                  # byte terminador 0x00
    for i in range(n - 1, -1, -1):
        best = INF
        for L in range(1, min(127, n - i) + 1):   # tiradas literales
            c = 1 + L + dp[i + L]
            if c < best:
                best = c
        j = i + 1
        while j < n and plane[j] == plane[i] and (j - i) < 127:
            j += 1
        for L in range(1, j - i + 1):              # tiradas de byte repetido
            c = 2 + dp[i + L]
            if c < best:
                best = c
        dp[i] = best
    out = bytearray()
    i = 0
    while i < n:
        best = INF
        tok = None
        for L in range(1, min(127, n - i) + 1):
            c = 1 + L + dp[i + L]
            if c < best:
                best = c
                tok = ("lit", L)
        j = i + 1
        while j < n and plane[j] == plane[i] and (j - i) < 127:
            j += 1
        for L in range(1, j - i + 1):
            c = 2 + dp[i + L]
            if c < best:
                best = c
                tok = ("rep", L)
        if tok[0] == "lit":
            out.append(0x80 | tok[1])
            out += plane[i:i + tok[1]]
        else:
            out.append(tok[1])
            out.append(plane[i])
        i += tok[1]
    out.append(0x00)
    return bytes(out)


def psrle_encode(buf, nplanes=4):
    """Codifica un buffer entrelazado a PS-RLE (plano a plano)."""
    out = bytearray()
    for p in psrle_deinterleave(buf, nplanes):
        out += _psrle_encode_plane(p)
    return bytes(out)


def _font_pixel(buf, t, r, c, bpp):
    """Valor del pixel (r, c) del tile `t` (espejo de extract_all.py)."""
    base = t * (8 * bpp) + r * bpp
    v = 0
    for p in range(bpp):
        if base + p < len(buf) and (buf[base + p] & (1 << (7 - c))):
            v |= 1 << p
    return v


def font_max_value(buf, tiles, bpp):
    """Valor maximo usado por la fuente (la extraccion normaliza a ese valor)."""
    m = 1
    for t in range(tiles):
        for r in range(8):
            for c in range(8):
                m = max(m, _font_pixel(buf, t, r, c, bpp))
    return m


def load_font_png(path, tiles, bpp, maxval):
    """Lee `font_<nombre>_mod.png` (PNG indexado de 16 colores, rejilla de
    extraccion; tambien admite escala de grises).

    Cada celda del PNG son FONT_SCALE x FONT_SCALE pixeles; se toma el pixel
    central (con FONT_SCALE=1, el propio pixel) y se revierte la normalizacion
    de la extraccion (gris -> valor 0..maxval). El PNG indexado se lee igual
    porque `convert("L")` traduce la entrada de paleta a su gris.
    """
    from PIL import Image
    img = Image.open(path).convert("L")
    cols = FONT_COLS
    rows = (tiles + cols - 1) // cols if tiles else 1
    tile_px = 8 * FONT_SCALE
    want = (cols * tile_px, rows * tile_px)
    if img.size != want:
        raise SystemExit(
            "Error: %s mide %dx%d px y se esperaba %dx%d (usa la misma "
            "rejilla de 16 tiles de ancho que genera extract_all.py)."
            % (os.path.basename(path), img.size[0], img.size[1], want[0], want[1]))
    px = img.load()
    levels = (1 << bpp) - 1
    buf = bytearray(tiles * 8 * bpp)
    for t in range(tiles):
        ox = (t % cols) * tile_px
        oy = (t // cols) * tile_px
        for r in range(8):
            for c in range(8):
                g = px[ox + c * FONT_SCALE + FONT_SCALE // 2,
                       oy + r * FONT_SCALE + FONT_SCALE // 2]
                v = (g * maxval + 127) // 255
                if v > levels:
                    v = levels
                base = t * (8 * bpp) + r * bpp
                for p in range(bpp):
                    if v & (1 << p):
                        buf[base + p] |= 1 << (7 - c)
    return bytes(buf)


def patch_font_loaders(out, old_logical, new_logical):
    """Repunta todos los `LD HL,<old_logical>` del codigo (banco 0).

    Las fuentes del banco 0x08 se cargan con el inmediato de 2 bytes de un
    `LD HL,xxxx`; al reubicar el bloque hay que actualizarlo en cada cargador.
    """
    lo = old_logical & 0xFF
    hi = (old_logical >> 8) & 0xFF
    n = 0
    for i in range(0x8000 - 2):                # el codigo vive en el banco 0
        if out[i] == 0x21 and out[i + 1] == lo and out[i + 2] == hi:
            out[i + 1] = new_logical & 0xFF
            out[i + 2] = (new_logical >> 8) & 0xFF
            n += 1
    return n


def insert_fonts(rom, base):
    """Reinserta las fuentes modificadas `font_<nombre>_mod.png`.

    Para cada fuente con variante `_mod` se vuelve a codificar (PS-RLE para
    main/small/icons, LZ 0x088D para credits) y se escribe en la ROM: en su
    sitio original si cabe, o reubicada en un hueco libre del mismo banco (y
    repuntando sus cargadores) si ha crecido.
    """
    out = bytearray(rom)
    done = 0
    for name, off, method, tiles, bpp in FONTS:
        mod = os.path.join(HERE, "font_%s_mod.png" % name)
        if not os.path.exists(mod):
            continue
        bank = off // 0x4000
        bank_base = bank * 0x4000
        if method == "psrle":
            planes, end = psrle_decode_planes(base, off, bpp, 0x8000)
            buf = psrle_interleave(planes, bpp)
            orig_len = end - off
        else:
            buf, orig_len = lz_decode(base, off)
        maxval = font_max_value(buf, tiles, bpp)
        new_buf = load_font_png(mod, tiles, bpp, maxval)
        comp = (psrle_encode(new_buf, bpp) if method == "psrle"
                else lz_encode_opt(new_buf))

        moved = False
        if len(comp) <= orig_len:
            target = off
        elif method != "psrle":
            raise SystemExit(
                "Error: font_%s re-codificada ocupa %d bytes y su hueco es de "
                "%d; esta fuente (LZ) no se puede reubicar automaticamente."
                % (name, len(comp), orig_len))
        else:
            regions = find_free(out, bank_base, bank_base + 0x4000)
            target = alloc(regions, len(comp))
            if target is None:
                raise SystemExit(
                    "Error: no hay hueco en el banco 0x%02X para reubicar "
                    "font_%s (%d bytes)." % (bank, name, len(comp)))
            moved = True

        out[target:target + len(comp)] = comp
        if moved:
            old_log = 0x8000 + (off - bank_base)
            new_log = 0x8000 + (target - bank_base)
            n = patch_font_loaders(out, old_log, new_log)
            print("  font_%s reubicada a 0x%06X (logico 0x%04X), %d cargadores "
                  "parcheados" % (name, target, new_log, n))
        else:
            print("  font_%s parcheada in-situ en 0x%06X" % (name, target))
        print("     %d bytes de tiles -> %d bytes codificados (hueco %d)"
              % (len(new_buf), len(comp), orig_len))
        done += 1
    return bytes(out), done


# ---------------------------------------------------------------------------
# Tabla .tbl (caracter -> byte)
# ---------------------------------------------------------------------------
def load_insert_tbl(path):
    table = {}
    with open(path, "r", encoding="utf-8") as fh:
        for line in fh:
            line = line.rstrip("\n").rstrip("\r")
            if not line or line[0] in ";#":
                continue
            if "=" not in line:
                continue
            char, hx = line.rsplit("=", 1)
            hx = hx.strip()
            try:
                byte = int(hx, 16)
            except ValueError:
                continue
            table[char] = byte
    return table


def encode_text(text, table, cells, where="", small_base=None, pad=0x00):
    """Convierte texto a `cells` codigos, rellenando con `pad` (por defecto 0x00).

    `small_base` (solo bloques alt): byte donde empieza la variante de fuente
    de ese bloque para las letras ausentes/puntuacion. En `alt_insert.tbl` esos
    glifos se dan como la variante de consejos (base 0xE0); aqui se reasignan a
    la variante que pida el bloque (p. ej. cajas/barra, base 0x1E). Los codigos
    [HH] NO se reasignan (son bytes literales, como los tiles del marco).
    """
    codes = []
    i = 0
    while i < len(text):
        if text[i] == "[" and i + 3 < len(text) and text[i + 3] == "]":
            try:
                codes.append(int(text[i + 1:i + 3], 16))
                i += 4
                continue
            except ValueError:
                pass
        ch = text[i]
        if ch not in table:
            raise SystemExit(
                "Error en %s: el caracter %r no esta en la tabla de insercion. "
                "Anade su byte de reemplazo a la tabla de insercion." % (where, ch))
        b = table[ch]
        if small_base is not None and 0xE0 <= b <= 0xEE:
            b = small_base + (b - 0xE0)
        codes.append(b)
        i += 1
    if len(codes) > cells:
        raise SystemExit(
            "Error en %s: el texto tiene %d celdas y el maximo es %d: %r"
            % (where, len(codes), cells, text))
    codes += [pad] * (cells - len(codes))
    return codes


def build_nametable(codes, attr=ATTR):
    out = bytearray()
    for c in codes:
        out.append(c)
        out.append(attr)
    return bytes(out)


def encode_stream(text, table, where=""):
    """Texto con marcas [HH] -> bytes (sin relleno). Para los dialogos."""
    out = bytearray()
    i = 0
    while i < len(text):
        if text[i] == "[" and i + 3 < len(text) and text[i + 3] == "]":
            try:
                out.append(int(text[i + 1:i + 3], 16))
                i += 4
                continue
            except ValueError:
                pass
        ch = text[i]
        if ch not in table:
            raise SystemExit(
                "Error en %s: el caracter %r no esta en main_insert.tbl." % (where, ch))
        out.append(table[ch])
        i += 1
    return bytes(out)


def block_attr(blk):
    return int(blk.get("attribute", "0x%02X" % ATTR), 16)


def parse_code_ranges(spec):
    """Convierte "0x1E-0x26,0x40" en una lista de tuplas (lo, hi).

    Se usa para saber que glifos de una pantalla del banco 0x08 pertenecen a la
    fuente "pequena" y por tanto llevan otro atributo."""
    out = []
    if not spec:
        return out
    for item in str(spec).split(","):
        item = item.strip().lower()
        if not item:
            continue
        if "-" in item:
            lo, hi = item.split("-", 1)
            out.append((int(lo, 16), int(hi, 16)))
        else:
            v = int(item, 16)
            out.append((v, v))
    return out


def code_is_small(code, ranges):
    return any(lo <= code <= hi for lo, hi in ranges)


def find_free(rom, start, end, min_size=8):
    """Lista de (offset, tamano) con bytes 0x00/0xFF dentro de [start, end)."""
    regions = []
    i = start
    while i < end:
        if rom[i] in (0x00, 0xFF):
            j = i
            fill = rom[i]
            while j < end and rom[j] == fill:
                j += 1
            if j - i >= min_size:
                regions.append([i, j - i])
            i = j
        else:
            i += 1
    return regions


# ---------------------------------------------------------------------------
# Asignador de espacio dentro del banco 0x1C
# ---------------------------------------------------------------------------
def free_regions(rom, reserve_original):
    """Lista de (offset, tamano) libres en el banco 0x1C."""
    regions = []
    i = STAGE_BANK_BASE
    while i < STAGE_BANK_END:
        if reserve_original and 0x7184A <= i < 0x71ABD:
            i = 0x71ABD
            continue
        if rom[i] in (0x00, 0xFF):
            j = i
            fill = rom[i]
            while j < STAGE_BANK_END and rom[j] == fill:
                j += 1
            if j - i >= 8:
                regions.append([i, j - i])
            i = j
        else:
            i += 1
    if reserve_original:
        regions.insert(0, [0x7184A, 0x71ABD - 0x7184A])
    return regions


def alloc(regions, size):
    for r in regions:
        if r[1] >= size:
            off = r[0]
            r[0] += size
            r[1] -= size
            return off
    return None


# ---------------------------------------------------------------------------
# Inserccion
# ---------------------------------------------------------------------------
def insert(rom, doc, table):
    out = bytearray(rom)
    regions = free_regions(rom, reserve_original=True)

    for name, blk in doc["blocks"].items():
        method = blk.get("method")
        cells = blk.get("cells")
        if method == "raw_nametable":
            msg = blk["messages"]["0"]
            text = msg.get("translated", msg["original"])
            codes = encode_text(text, table, cells, "%s[0]" % name)
            base = int(blk["text_address"], 16)
            out[base:base + cells * 2] = build_nametable(codes, block_attr(blk))

        elif method == "lz_nametable":
            # recomprimir todos los mensajes y repartirlos en el banco 0x1C.
            # El area original de los bloques (0x7184A..0x71ABD) se reescribe
            # por completo, por lo que se usa como "pool" contiguo.
            packed = []
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = msg.get("translated", msg["original"])
                n = msg.get("cells", cells)
                codes = encode_text(text, table, n, "%s[%s]" % (name, k))
                raw = build_nametable(codes, block_attr(blk))
                comp = lz_encode_opt(raw)
                packed.append((k, msg, comp))

            tbl_base = int(blk["pointer_address"], 16)
            for k, msg, comp in packed:
                target = alloc(regions, len(comp))
                if target is None:
                    raise SystemExit(
                        "Error: no hay espacio en el banco 0x1C para el "
                        "bloque %s[%s] (%d bytes)." % (name, k, len(comp)))
                out[target:target + len(comp)] = comp
                logical = 0x8000 + (target - STAGE_BANK_BASE)
                poff = tbl_base + int(msg["pointer_offset"], 16)
                out[poff] = logical & 0xFF
                out[poff + 1] = (logical >> 8) & 0xFF

        elif method == "lz_text":
            # Dialogos: flujo de 1 byte por caracter con codigos de control.
            # Se recomprimen los bloques y se empaquetan en el area original del
            # banco 0x1C, reescribiendo la tabla de punteros (pares largo/corto).
            bank = int(blk.get("bank", "0x00"), 16)
            bank_base = bank * 0x4000
            orig = sorted(int(m["block_address"], 16) for m in blk["messages"].values())
            pool_start = orig[0]
            # fin real de la zona de dialogos (no invadir datos vecinos)
            pool_end = 0
            for m in blk["messages"].values():
                a = int(m["block_address"], 16)
                _, cs = lz_decode(rom, a)
                pool_end = max(pool_end, a + cs)
            regions = find_free(out, bank_base, bank_base + 0x4000)
            regions = [[r[0], r[1]] for r in regions if r[0] + r[1] <= pool_start
                       or r[0] >= pool_end]
            regions.insert(0, [pool_start, pool_end - pool_start])

            packed = []
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = msg.get("translated", msg["original"])
                raw = encode_stream(text, table, "%s[%s]" % (name, k))
                packed.append((k, msg, lz_encode_opt(raw)))

            tbl_base = int(blk["pointer_address"], 16)
            used = 0
            for k, msg, comp in packed:
                target = alloc(regions, len(comp))
                if target is None:
                    raise SystemExit(
                        "Error: no hay espacio en el banco 0x%02X para el "
                        "dialogo %s[%s] (%d bytes)." % (bank, name, k, len(comp)))
                out[target:target + len(comp)] = comp
                logical = 0x8000 + (target - bank_base)
                poff = tbl_base + int(msg["pointer_offset"], 16)
                out[poff] = logical & 0xFF
                out[poff + 1] = (logical >> 8) & 0xFF
                used = max(used, target + len(comp) - pool_start)
            print("  dialogos: %d bytes empaquetados (hueco original %d)"
                  % (used, pool_end - pool_start))

        elif method == "lz_patch":
            # Name table con atributos variados: se parchean solo las celdas
            # indicadas (codigo + atributo) y se recompone el bloque.
            attr = block_attr(blk)
            # Dos modos de decidir el atributo de cada celda parcheada:
            #
            # * `letter_attr`/`small_attr`/`small_codes` (pantallas del banco
            #   0x08). El atributo depende del GLIFO: las letras de la fuente
            #   principal usan `letter_attr` y las ausentes (G H J K Q V X Y Z)
            #   mas la puntuacion usan `small_attr`. Los bits de giro (0x02 y
            #   0x04) se conservan de la celda original, para que los remates y
            #   flechas girados (p. ej. el ultimo caracter de la barra de
            #   estado) sigan bien aunque el glifo cambie.
            # * `preserve_attrs`: se conserva el atributo original de la celda
            #   (para el HUD, que usa tiles girados en las rayas).
            preserve = bool(blk.get("preserve_attrs", False))
            letter_attr = int(blk.get("letter_attr", "0x%02X" % attr), 16)
            small_attr = (int(blk["small_attr"], 16)
                          if "small_attr" in blk else None)
            small_ranges = parse_code_ranges(blk.get("small_codes", ""))
            # Base de la variante de fuente de este bloque para las letras
            # ausentes/puntuacion (barra/cajas 0x1E, consejos 0xE0).
            small_base = min(lo for lo, _ in small_ranges) if small_ranges else None
            base_off = int(blk["text_address"], 16)
            raw, csize = lz_decode(rom, base_off)
            orig = bytes(raw)
            raw = bytearray(raw)
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = msg.get("translated", msg["original"])
                n = msg["cells"]
                codes = encode_text(text, table, n, "%s[%s]" % (name, k),
                                    small_base=small_base)
                off = int(msg["text_offset"], 16)
                for j, c in enumerate(codes):
                    raw[off + j * 2] = c
                    a = off + j * 2 + 1
                    if small_attr is not None and a < len(orig):
                        # atributo segun el glifo + bits de giro originales
                        base = (small_attr if code_is_small(c, small_ranges)
                                else letter_attr)
                        raw[a] = (base & ~0x06) | (orig[a] & 0x06)
                    elif preserve and c != 0x00 and a < len(orig):
                        # se conserva el atributo del glifo original
                        raw[a] = orig[a]
                    else:
                        # fuera del bloque original, o para un espacio, se usa
                        # el atributo del bloque (su tile en blanco)
                        raw[a] = attr
            comp = lz_encode_opt(bytes(raw))
            bank = base_off // 0x4000
            bank_base = bank * 0x4000
            if len(comp) <= csize:
                target = base_off
            else:
                regions = find_free(out, bank_base, bank_base + 0x4000)
                target = alloc(regions, len(comp))
                if target is None:
                    raise SystemExit(
                        "Error: no hay espacio en el banco 0x%02X para %s."
                        % (bank, name))
                la = int(blk["loader_address"], 16)
                logical = 0x8000 + (target - bank_base)
                out[la] = logical & 0xFF
                out[la + 1] = (logical >> 8) & 0xFF
                print("  %s reubicado a 0x%06X (logico 0x%04X)"
                      % (name, target, logical))
            out[target:target + len(comp)] = comp
            print("  %s: %d bytes comprimidos (original %d)"
                  % (name, len(comp), csize))

        elif method == "lz_nametable_fixed":
            # Bloques LZ con direccion fija en el codigo (pantallas de historia).
            # No hay tabla de punteros: el cargador usa LD HL,<dir logica>. Si la
            # recompresion cabe en el hueco original se deja donde estaba; si no,
            # se reubica en espacio libre del mismo banco y se parchea el
            # inmediato de 2 bytes del cargador (`loader_address`).
            attr = block_attr(blk)
            bank = int(blk.get("bank", "0x00"), 16)
            bank_base = bank * 0x4000
            bank_end = bank_base + 0x4000
            regions = find_free(out, bank_base, bank_end)
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = msg.get("translated", msg["original"])
                n = msg.get("cells", cells)
                codes = encode_text(text, table, n, "%s[%s]" % (name, k))
                comp = lz_encode_opt(build_nametable(codes, attr))
                orig_off = int(msg["block_address"], 16)
                slot = int(msg.get("max_size", "0x000000"), 16)
                target = orig_off if len(comp) <= slot else None
                if target is None:
                    target = alloc(regions, len(comp))
                    if target is None:
                        raise SystemExit(
                            "Error: no hay espacio en el banco 0x%02X para el "
                            "bloque %s[%s] (%d bytes)." % (bank, name, k, len(comp)))
                    la = int(msg["loader_address"], 16)
                    logical = 0x8000 + (target - bank_base)
                    out[la] = logical & 0xFF
                    out[la + 1] = (logical >> 8) & 0xFF
                    print("  %s[%s] reubicado a 0x%06X (logico 0x%04X)"
                          % (name, k, target, logical))
                out[target:target + len(comp)] = comp

        elif method == "raw_patch":
            # Name table CRUDA (sin comprimir) de celdas de 2 bytes
            # (glifo + atributo). Se parchea el glifo de cada campo en su
            # direccion absoluta (`text_offset`). Los campos tienen longitud
            # FIJA, asi que se rellena con espacios si la traduccion es mas
            # corta (creditos: glifo de espacio de su tabla; cajas: 0x00).
            #
            # Igual que en `lz_patch`, el atributo de cada celda parcheada se
            # puede decidir por GLIFO con `letter_attr`/`small_attr`/
            # `small_codes` (necesario para el overlay del flautin, que mezcla
            # la fuente principal con la variante pequena de las cajas) y los
            # bytes 0xE0-0xEE de la tabla se reasignan a la variante del bloque
            # (`small_base`). Si el bloque NO trae `small_attr` (creditos) se
            # conserva el atributo original y no se reasigna nada.
            space = table.get(" ", 0x11)
            small_attr = (int(blk["small_attr"], 16)
                          if "small_attr" in blk else None)
            small_ranges = parse_code_ranges(blk.get("small_codes", ""))
            small_base = min(lo for lo, _ in small_ranges) if small_ranges else None
            letter_attr = int(blk.get("letter_attr", "0x%02X" % block_attr(blk)), 16)
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = msg.get("translated", msg["original"])
                n = msg["cells"]
                codes = encode_text(text, table, n, "%s[%s]" % (name, k),
                                    small_base=small_base, pad=space)
                off = int(msg["text_offset"], 16)
                for j, c in enumerate(codes):
                    out[off + j * 2] = c
                    a = off + j * 2 + 1
                    if small_attr is not None and a < len(out):
                        # atributo segun el glifo + bits de giro originales
                        base = (small_attr if code_is_small(c, small_ranges)
                                else letter_attr)
                        out[a] = (base & ~0x06) | (out[a] & 0x06)
            print("  %s: %d campos parcheados" % (name, len(blk["messages"])))
        else:
            raise SystemExit("Metodo desconocido: %r" % method)

    return bytes(out)


def main():
    if not os.path.exists(ROM_PATH):
        sys.exit("No encuentro la ROM base: %s" % ROM_NAME)
    if not os.path.exists(JSON_PATH):
        sys.exit("No encuentro texts_translated.json (copia texts.json y traduce).")
    if not os.path.exists(TBL_PATH):
        sys.exit("No encuentro main_insert.tbl")

    rom = open(ROM_PATH, "rb").read()
    doc = json.load(open(JSON_PATH, "r", encoding="utf-8"))
    table = load_insert_tbl(TBL_PATH)

    out = insert(rom, doc, table)

    # Bloques con tabla alternativa (banco 0x08), con su propia tabla.
    if os.path.exists(ALT_JSON_PATH):
        if not os.path.exists(ALT_TBL_PATH):
            sys.exit("No encuentro alt_insert.tbl")
        alt_doc = json.load(open(ALT_JSON_PATH, "r", encoding="utf-8"))
        alt_table = load_insert_tbl(ALT_TBL_PATH)
        out = insert(out, alt_doc, alt_table)
    else:
        print("Aviso: no existe texts_translated_alt.json; se omite la tabla "
              "alternativa.")

    # Tercer juego: creditos finales + mensaje final (su propia tabla).
    if os.path.exists(CREDITS_JSON_PATH):
        if not os.path.exists(CREDITS_TBL_PATH):
            sys.exit("No encuentro credits_insert.tbl")
        credits_doc = json.load(open(CREDITS_JSON_PATH, "r", encoding="utf-8"))
        if credits_doc.get("blocks"):
            credits_table = load_insert_tbl(CREDITS_TBL_PATH)
            out = insert(out, credits_doc, credits_table)
        else:
            print("Aviso: texts_translated_credits.json esta vacio (creditos/"
                  "mensaje final aun sin localizar); se omite.")
    else:
        print("Aviso: no existe texts_translated_credits.json; se omite.")

    # Fuentes: reinserta las variantes `font_<nombre>_mod.png` si existen.
    out, nfonts = insert_fonts(out, rom)
    if nfonts:
        print("Fuentes reinsertadas (%d)" % nfonts)
    else:
        print("Aviso: no hay font_*_mod.png; se omiten las fuentes.")

    if len(out) != len(rom):
        sys.exit("Tamano de ROM inesperado: %d != %d" % (len(out), len(rom)))

    with open(OUT_PATH, "wb") as fh:
        fh.write(out)
    print("Escrito %s (%d bytes)" % (os.path.basename(OUT_PATH), len(out)))


if __name__ == "__main__":
    main()
