#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""insert_all.py - Insertor de textos de
"Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"

Lee `texts_translated.json` (bloques principales) y `texts_translated_alt.json`
(bloques de la fuente alternativa), recomprime lo necesario y genera
`TR_<nombre original>` partiendo de la ROM base.

Reglas (tr_rules.md):
  * La conversion caracter -> byte la hace EXCLUSIVAMENTE la tabla de insercion
    (`main_insert.tbl` para los bloques principales, `alt_insert.tbl` para los
    alt). No se modifica ni se convierte nada fuera de ellas.
  * Los codigos [HH] insertan el byte literal HH.
  * La ROM base no se toca.

Si `texts_translated*.json` no existen, se usan los textos extraidos sin
traducir (util para reinsertar los originales y verificar el round-trip).

Metodos:
  * `raw_nametable`       name table SIN comprimir (nombres de fase). In-place.
  * `raw_nametable_runs`  region de name table sin comprimir (estado/creditos):
                          se parchean solo las tiradas de texto. In-place.
  * `lz_text`             dialogos (flujo de 1 byte/caracter comprimido LZ).
                          Se recomprimen y se reparte la tabla de punteros.
  * `lz_patch`            name table LZ de la que solo se parchea una region de
                          texto (los overlays alt del banco 0x08). Se recomprime
                          el bloque completo y debe caber en su hueco.

Ademas reinserta las fuentes modificadas `font_<nombre>_mod.png` (misma rejilla
que genera extract_all.py): main/small/icons (PS-RLE) e initial (LZ).

Uso:  python insert_all.py
"""

import json
import os
import sys

ROM_NAME = "Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"
HERE = os.path.dirname(os.path.abspath(__file__))
ROM_PATH = os.path.join(HERE, ROM_NAME)
TBL_PATH = os.path.join(HERE, "main_insert.tbl")
ALT_TBL_PATH = os.path.join(HERE, "alt_insert.tbl")
JSON_PATH = os.path.join(HERE, "texts_translated.json")
ALT_JSON_PATH = os.path.join(HERE, "texts_translated_alt.json")
BASE_JSON_PATH = os.path.join(HERE, "texts.json")
BASE_ALT_JSON_PATH = os.path.join(HERE, "texts_alt.json")
OUT_PATH = os.path.join(HERE, "TR_" + ROM_NAME)

STAGE_BANK = 0x1C
STAGE_BANK_BASE = STAGE_BANK * 0x4000
STAGE_BANK_END = STAGE_BANK_BASE + 0x4000
DIALOG_BANK = 0x1C
DIALOG_BANK_BASE = DIALOG_BANK * 0x4000
DIALOG_TABLE_ROM = 0x072697
ALT_LETTER_ATTR = 0x19
ALT_SMALL_ATTR = 0x18

# --- Fuentes (mismo listado que extract_all.py) ----------------------------
# (nombre, rom, metodo, tiles, bpp). Si existe `font_<nombre>_mod.png` se
# reinserta en la ROM: en su sitio si cabe o, si crece, reubicandola en un hueco
# libre del mismo banco (solo las PS-RLE) y repuntando sus cargadores.
#   * initial (0x070041, banco 0x1C) es la fuente LZ de A-Z/0-9; sus cargadores
#     no se han localizado como LD HL directos, asi que solo se admite in-situ.
#   IMPORTANTE: la rutina PS-RLE (0x0725) hace `LD B,04` y lee SIEMPRE 4 planos.
#   Las fuentes PS-RLE son 4bpp; hay que codificar los 4 planos o el juego
#   descomprime basura (los planos 3-4 se leen de bytes ajenos).
FONTS = (
    # nombre      rom       metodo    tiles  bpp
    ("main",     0x021ED8, "psrle",  39, 4),
    ("small",    0x022151, "psrle",   7, 4),
    ("icons",    0x022960, "psrle",  36, 4),
    ("initial",  0x070041, "lz",     52, 4),
)
FONT_COLS = 16        # tiles por fila (igual que al extraer)
FONT_SCALE = 1        # pixeles de PNG por pixel de tile (resolucion original)


# ---------------------------------------------------------------------------
# LZ (rutina 0x0884) - decodificador y codificador optimo
# ---------------------------------------------------------------------------
def lz_decode(data, off):
    """Devuelve (bytes_descomprimidos, bytes_consumidos)."""
    out = bytearray()
    pos = off
    n = len(data)
    while True:
        if pos >= n:
            return bytes(out), pos - off
        ctl = data[pos]; pos += 1
        for _ in range(8):
            if pos >= n:
                return bytes(out), pos - off
            if ctl & 1:
                out.append(data[pos]); pos += 1
            else:
                c = data[pos]; b = data[pos + 1]; pos += 2
                if c == 0 and b == 0:
                    return bytes(out), pos - off
                value = ((0xF0 | (b & 0x0F)) << 8) | c
                dist = 0x10000 - value
                length = ((b & 0xF0) >> 4) + 3
                src = len(out) - dist
                for i in range(length):
                    out.append(out[src + i])
            ctl >>= 1


MAX_DIST = 0x1000
MAX_LEN = 18


def _best_matches(data):
    n = len(data)
    blen = [0] * n
    bdst = [0] * n
    table = {}
    for pos in range(n):
        bl = 0; bd = 0
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
                        bl = L; bd = d
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
    """Codificador LZ 0x0884 optimo (programacion dinamica)."""
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
            if i < n:
                nc = cost + ctl + 1
                nr = (r + 1) % 8
                old = dp[i + 1][nr]
                if old is None or nc < old[0]:
                    dp[i + 1][nr] = (nc, (i, r, ("lit", data[i])))
            L = blen[i] if i < n else 0
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
    fin = min((r for r in range(8) if dp[n][r] is not None),
              key=lambda r: dp[n][r][0])
    toks = []
    i, r = n, fin
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
                # "ref" y "end" (que emite el terminador 00 00)
                out.append(t[1]); out.append(t[2])
    return bytes(out)


# ---------------------------------------------------------------------------
# Fuentes: PNG -> tiles -> (PS-RLE / LZ) -> ROM
# ---------------------------------------------------------------------------
def psrle_decode_planes(data, off, nplanes=4, max_out=0x4000):
    """Descomprime un bloque PS-RLE de `nplanes` planos desde `off`.

    Devuelve `(planos, fin)` con los planos desempaquetados y la posicion del
    primer byte despues del ultimo terminador (espejo de extract_all.py).
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
    central y se revierte la normalizacion de la extraccion (gris -> valor
    0..maxval). El PNG indexado se lee igual porque `convert("L")` traduce la
    entrada de paleta a su gris.
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
    main/small/icons, LZ 0x0884 para initial) y se escribe en la ROM: en su
    sitio original si cabe, o reubicada en un hueco libre del mismo banco (y
    repuntando sus cargadores) si ha crecido. Devuelve `(bytes, reinsertadas)`.
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
# Tablas .tbl
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
            try:
                table[char] = int(hx.strip(), 16)
            except ValueError:
                continue
    return table


def _tokenize(text, table, where):
    """Texto con marcas [HH] -> lista de codigos de byte."""
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
                "Anade su byte de reemplazo a la tabla." % (where, ch))
        codes.append(table[ch])
        i += 1
    return codes


def encode_cells(text, table, cells, where=""):
    """Texto -> exactamente `cells` codigos (rellena con 0x00)."""
    codes = _tokenize(text, table, where)
    if len(codes) > cells:
        raise SystemExit(
            "Error en %s: el texto tiene %d celdas y el maximo es %d: %r"
            % (where, len(codes), cells, text))
    codes += [0x00] * (cells - len(codes))
    return codes


def encode_stream(text, table, where=""):
    return bytes(_tokenize(text, table, where))


def block_attr(blk, default=0x00):
    return int(blk.get("attribute", "0x%02X" % default), 16)


def parse_code_ranges(spec):
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
def merge_messages(base_doc, tr_doc):
    """Devuelve 'translated' para cada bloque/mensaje (de tr_doc si existe)."""
    tr_blocks = (tr_doc or {}).get("blocks", {})
    return tr_blocks


def inserted_text(msg, tr_msg):
    if tr_msg and "translated" in tr_msg:
        return tr_msg["translated"]
    return msg.get("translated", msg["original"])


def insert_main(out, rom, doc, tr_doc, table):
    tr_blocks = merge_messages(doc, tr_doc)
    for name, blk in doc["blocks"].items():
        method = blk.get("method")
        tr_blk = tr_blocks.get(name, {})
        tr_msgs = tr_blk.get("messages", {})
        base = int(blk["text_address"], 16)

        if method == "raw_nametable":
            cells = blk["cells"]
            attr = block_attr(blk)
            # cada mensaje es su propio bloque de name table (mismo tamaño);
            # se escribe en su `block_address` (varios nombres de fase)}
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = inserted_text(msg, tr_msgs.get(k))
                codes = encode_cells(text, table, cells,
                                     "%s[%s]" % (name, k))
                off = int(msg.get("block_address", blk["text_address"]), 16)
                buf = bytearray()
                for c in codes:
                    buf.append(c); buf.append(attr)
                out[off:off + cells * 2] = buf
            print("  %-14s raw_nametable %d bloques x %d celdas"
                  % (name, len(blk["messages"]), cells))

        elif method == "raw_nametable_runs":
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = inserted_text(msg, tr_msgs.get(k))
                n = msg["cells"]
                codes = encode_cells(text, table, n, "%s[%s]" % (name, k))
                off = base + int(msg["text_offset"], 16)
                for j, c in enumerate(codes):
                    out[off + j * 2] = c   # se conserva el atributo original
            print("  %-14s raw_nametable_runs %d tiradas"
                  % (name, len(blk["messages"])))

        elif method == "raw_text_rows":
            # Texto plano 1 byte/caracter (0x00=espacio), rejilla rows x cols,
            # SIN comprimir y con direccion fija en el codigo. Se escribe en su
            # propio `block_address` (mismo tamano: rows*cols).
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = inserted_text(msg, tr_msgs.get(k))
                n = msg["cells"]
                codes = encode_cells(text, table, n, "%s[%s]" % (name, k))
                off = int(msg["block_address"], 16)
                out[off:off + n] = bytes(codes)
            print("  %-14s raw_text_rows %d pantallas"
                  % (name, len(blk["messages"])))

        elif method == "lz_text":
            bank = int(blk.get("bank", "0x1C"), 16)
            bank_base = bank * 0x4000
            pool_start = min(int(m["block_address"], 16)
                             for m in blk["messages"].values())
            pool_end = 0
            for m in blk["messages"].values():
                a = int(m["block_address"], 16)
                _, cs = lz_decode(rom, a)
                pool_end = max(pool_end, a + cs)
            regions = find_free(out, bank_base, bank_base + 0x4000)
            regions = [[r[0], r[1]] for r in regions
                       if r[0] + r[1] <= pool_start or r[0] >= pool_end]
            regions.insert(0, [pool_start, pool_end - pool_start])
            packed = []
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = inserted_text(msg, tr_msgs.get(k))
                raw = encode_stream(text, table, "%s[%s]" % (name, k))
                packed.append((msg, lz_encode_opt(raw), len(raw)))
            tbl_base = int(blk["pointer_address"], 16)
            used = 0
            for msg, comp, rawlen in packed:
                target = alloc(regions, len(comp))
                if target is None:
                    raise SystemExit(
                        "Error: no cabe el dialogo %r (%d bytes) en el banco 0x%02X."
                        % (msg.get("block_address"), len(comp), bank))
                out[target:target + len(comp)] = comp
                logical = 0x8000 + (target - bank_base)
                poff = tbl_base + int(msg["pointer_offset"], 16)
                out[poff] = logical & 0xFF
                out[poff + 1] = (logical >> 8) & 0xFF
                used = max(used, target + len(comp) - pool_start)
            print("  %-14s lz_text %d bloques, %d/%d bytes del hueco"
                  % (name, len(packed), used, pool_end - pool_start))

        elif method == "lz_patch":
            base_off = base
            raw, csize = lz_decode(rom, base_off)
            raw = bytearray(raw)
            attr = block_attr(blk, 0x19)
            small_attr = (int(blk["small_attr"], 16)
                          if "small_attr" in blk else None)
            small_ranges = parse_code_ranges(blk.get("small_codes", ""))
            msg = blk["messages"]["0"]
            text = inserted_text(msg, tr_msgs.get("0"))
            n = msg["cells"]
            codes = encode_cells(text, table, n, name)
            off = int(msg["text_offset"], 16)
            for j, c in enumerate(codes):
                raw[off + j * 2] = c
                a = off + j * 2 + 1
                if small_attr is not None:
                    raw[a] = small_attr if code_is_small(c, small_ranges) else attr
                else:
                    raw[a] = attr
            comp = lz_encode_opt(bytes(raw))
            if len(comp) > csize:
                raise SystemExit(
                    "Error: %s no cabe en su hueco (%d > %d bytes)."
                    % (name, len(comp), csize))
            out[base_off:base_off + len(comp)] = comp
            print("  %-14s lz_patch %d celdas (%d/%d bytes)"
                  % (name, n, len(comp), csize))

        else:
            raise SystemExit("Metodo desconocido: %r" % method)


def insert_alt(out, rom, doc, tr_doc, table):
    tr_blocks = merge_messages(doc, tr_doc)
    for name, blk in doc["blocks"].items():
        tr_blk = tr_blocks.get(name, {})
        tr_msgs = tr_blk.get("messages", {})

        # Overlay crudo (name table sin comprimir): se escribe in-situ.
        if blk.get("method") == "raw_alt":
            attr = block_attr(blk, ALT_LETTER_ATTR)
            small_attr = (int(blk["small_attr"], 16)
                          if "small_attr" in blk else ALT_SMALL_ATTR)
            small_ranges = parse_code_ranges(blk.get("small_codes", ""))
            total = 0
            for k in sorted(blk["messages"], key=int):
                msg = blk["messages"][k]
                text = inserted_text(msg, tr_msgs.get(k))
                n = msg["cells"]
                codes = encode_cells(text, table, n, "%s[%s]" % (name, k))
                off = int(msg["text_offset"], 16)
                for j, c in enumerate(codes):
                    out[off + j * 2] = c
                    out[off + j * 2 + 1] = (small_attr
                                            if code_is_small(c, small_ranges)
                                            else attr)
                total += n
            print("  %-14s raw_alt %d tramos (%d celdas)"
                  % (name, len(blk["messages"]), total))
            continue

        base_off = int(blk["text_address"], 16)
        raw, csize = lz_decode(rom, base_off)
        raw = bytearray(raw)
        attr = block_attr(blk, ALT_LETTER_ATTR)
        small_attr = (int(blk["small_attr"], 16)
                      if "small_attr" in blk else ALT_SMALL_ATTR)
        small_ranges = parse_code_ranges(blk.get("small_codes", ""))
        msg = blk["messages"]["0"]
        text = inserted_text(msg, tr_msgs.get("0"))
        n = msg["cells"]
        codes = encode_cells(text, table, n, name)
        off = int(msg["text_offset"], 16)
        for j, c in enumerate(codes):
            raw[off + j * 2] = c
            raw[off + j * 2 + 1] = (small_attr if code_is_small(c, small_ranges)
                                    else attr)
        comp = lz_encode_opt(bytes(raw))
        if len(comp) > csize:
            raise SystemExit(
                "Error: el bloque alt %s no cabe en su hueco (%d > %d bytes)."
                % (name, len(comp), csize))
        out[base_off:base_off + len(comp)] = comp
        print("  %-14s lz_patch (alt) %d celdas (%d/%d bytes)"
              % (name, n, len(comp), csize))


def main():
    if not os.path.exists(ROM_PATH):
        sys.exit("No encuentro la ROM base: %s" % ROM_NAME)

    rom = open(ROM_PATH, "rb").read()
    out = bytearray(rom)

    # textos principales
    base_doc = json.load(open(BASE_JSON_PATH, encoding="utf-8"))
    tr_doc = (json.load(open(JSON_PATH, encoding="utf-8"))
              if os.path.exists(JSON_PATH) else None)
    main_tbl = load_insert_tbl(TBL_PATH)
    if tr_doc is None:
        print("(texts_translated.json no existe: se usan los originales)")
    insert_main(out, rom, base_doc, tr_doc, main_tbl)

    # textos alt
    base_alt = json.load(open(BASE_ALT_JSON_PATH, encoding="utf-8"))
    tr_alt = (json.load(open(ALT_JSON_PATH, encoding="utf-8"))
              if os.path.exists(ALT_JSON_PATH) else None)
    alt_tbl = load_insert_tbl(ALT_TBL_PATH)
    if tr_alt is None:
        print("(texts_translated_alt.json no existe: se usan los originales)")
    insert_alt(out, rom, base_alt, tr_alt, alt_tbl)

    # fuentes: reinserta las variantes `font_<nombre>_mod.png` si existen
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
