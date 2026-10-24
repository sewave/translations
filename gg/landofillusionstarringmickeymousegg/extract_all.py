#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""extract_all.py - Extractor de textos de
"Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"

Genera `texts.json` a partir de la ROM base usando la tabla `main_extract.tbl`.

Codificacion (GG): un unico orden de fuente casi alfabetico.
  El texto de "pantalla" (nombres de fase, estado, creditos) es una *name table*:
  2 bytes por celda = (codigo_de_caracter, atributo). El byte bajo es el caracter.
  Los dialogos son un flujo de 1 byte por caracter tras descomprimir el LZ.

Tambien vuelca a `font_<nombre>.png` las fuentes del juego (main/small/icons/
initial), con la misma rejilla que insert_all.py espera para `font_<nombre>_mod.png`.

Tipos de bloque:

  * `raw_nametable`       -> name table SIN comprimir (nombres de fase).
  * `raw_nametable_runs`  -> region grande de name table (estado / creditos / menu
                             de pausa del mapa) en la que solo se extraen las
                             "tiradas" de texto; el resto (tiles decorativos,
                             atributos) se conserva al insertar.
  * `lz_text`             -> dialogos. Comprimidos con el LZ del juego (rutina
                             0x0884); al descomprimir son un flujo de 1 byte por
                             caracter con codigos de control 0xF8..0xFF.

Uso:  python extract_all.py
"""

import json
import os

ROM_NAME = "Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"
HERE = os.path.dirname(os.path.abspath(__file__))
ROM_PATH = os.path.join(HERE, ROM_NAME)
TBL_PATH = os.path.join(HERE, "main_extract.tbl")
OUT_PATH = os.path.join(HERE, "texts.json")
ALT_TBL_PATH = os.path.join(HERE, "alt_extract.tbl")
ALT_OUT_PATH = os.path.join(HERE, "texts_alt.json")

# ---------------------------------------------------------------------------
# Nombres de fase (name table sin comprimir)
#   banco 0x1C -> offset de ROM 0x1C*0x4000 = 0x70000
#   tabla de punteros (16 bits, direcciones de ventana 0x8000-0xBFFF) en 0x71499
#   bloques contiguos desde 0x714B9, 19 celdas x 2 bytes = 38 bytes cada uno,
#   atributo 0x00. La entrada 15 repite la 0 (centinela).
STAGE_TABLE_ROM = 0x71499
STAGE_BANK_BASE = 0x70000
STAGE_COUNT = 15
STAGE_CELLS = 19
STAGE_ATTR = 0x00

# ---------------------------------------------------------------------------
# Dialogos (texto con codigos de control, comprimido con el LZ 0x0884)
#   tabla de punteros en 0x072697: 10 entradas de 16 bits (5 pares
#   dialogo largo / recordatorio corto).
DIALOG_TABLE_ROM = 0x072697
DIALOG_BANK = 0x1C
DIALOG_BANK_BASE = DIALOG_BANK * 0x4000
DIALOG_COUNT = 10

# ---------------------------------------------------------------------------
# Pantallas de historia de la intro (texto plano de 5 filas, sin comprimir)
#   El cargador esta en ROM 0x0013F0 (banco 0, fijo). Para cada pantalla hace:
#       LD HL,<ilustracion> ; CALL 0x0884 (LZ) -> 0xD000 ; dibuja 12x18 (BC=0x0C24)
#       LD DE,<texto> ; LD HL,0xCE0E ; LD BC,0x0512/0x0513 ; JP 0x05AEC
#   El texto son 5 filas de 1 byte/caracter (0x00=espacio) que se dibujan encima
#   de la ilustracion. NO hay tabla de punteros: la direccion logica va como
#   inmediato en el codigo (si el bloque se reubicase habria que parchear ese
#   inmediato, en `immediate_rom`).
#   (block_rom, logical, immediate_rom, rows, cols)
INTRO_STORY_BANK = 0x1A
INTRO_STORY_BANK_BASE = INTRO_STORY_BANK * 0x4000
INTRO_STORY_ROWS = 5
INTRO_STORY_SCREENS = (
    (0x06A16B, 0xA16B, 0x001405, 5, 18),
    (0x06A1C5, 0xA1C5, 0x001463, 5, 19),
)

# ---------------------------------------------------------------------------
# Estado + creditos (region de name tables sin comprimir, banco 0x19)
#   Se extraen solo las celdas de texto legible; el resto (tiles decorativos y
#   atributos) se conserva.
#
#   La region contiene dos pantallas:
#     * Pantalla de ESTADO: campos contiguos de longitud fija (se concatenan en
#       la ROM sin separador). Aqui van los offsets absolutos y sus celdas.
#     * Pantalla de CAST/STAFF: el texto se coloca en una rejilla 2D con
#       rellenos 'H'(0x08)/'B'(0x02). Cada linea puede empezar en paridad PAR o
#       IMPAR (el relleno tiene longitud impar), asi que se escanean AMBAS.
CREDITS_ROM = 0x64A40
CREDITS_END = 0x65C00
#   El relleno usa los tiles 'H'(0x08)/'B'(0x02); los nombres usan el atributo
#   0x08 y los rotulos 0x00, pero el relleno tambien puede llevar 0x00, asi que
#   se distingue recortando las tandas de 'H'/'B' de los extremos del token.
CREDITS_FIXED_FIELDS = [
    (0x64A50, 6),    # CAST   (pantalla de titulo de cast; atributo 0x00)
    (0x64AE0, 6),    # CAST   (cabecera de la pantalla de estado)
    (0x64AEC, 17),   # TOTAL POWER STARS
    (0x64B0E, 8),    # NO BONUS
    (0x64B1E, 11),   # TRIES BONUS
    (0x64B34, 10),   # YOUR SCORE
    (0x64B48, 8),    # HI-SCORE
]

# ---------------------------------------------------------------------------
# Menu de pausa del MAPA MUNDI (name table sin comprimir, banco 0x1D)
#   Rejilla de 20x18 celdas (2 bytes/celda = codigo, atributo). El cargador la
#   copia a RAM con una rutina "expansora" de zancada 0x40 (32 celdas):
#       ROM 0x636E: LD A,0x1D / LD (0xFFFF),A
#                   LD HL,0xB971 (logico -> ROM 0x077971)
#                   LD DE,0xCACC / LD BC,0x1228 / CALL 0x0AE4
#   (B=0x12 = 18 filas de C=0x28 = 20 celdas). Es DISTINTA de la pantalla de
#   estado/creditos del banco 0x19. En cada celda el caracter va en el byte PAR
#   y el atributo en el IMPAR; las etiquetas son las unicas celdas de texto (el
#   resto son tiles de borde/rejilla que no se tocan).
MAP_PAUSE_ROM = 0x077971
MAP_PAUSE_BANK = 0x1D
MAP_PAUSE_WIDTH = 20
MAP_PAUSE_HEIGHT = 18
MAP_PAUSE_LOADER = 0x636E
# Etiquetas: (celda_inicial, celdas). Offsets relativos a MAP_PAUSE_ROM.
MAP_PAUSE_FIELDS = [
    (42,  8),    # HI-SCORE
    (84,  5),    # SCORE
    (125, 4),    # ITEM
    (134, 5),    # TRIES
    (222, 17),   # TOTAL POWER STARS
]

# ---------------------------------------------------------------------------
# Bloques "alt" (banco 0x08): name tables LZ con una SEGUNDA fuente
#   Son los overlays: cajas de pausa, "TIME UP", el prompt de la flauta magica
#   y las 4 pantallas de consejo. Usan una fuente propia (codigos ~0x9E-0xBF),
#   descifrada cruzando los textos en claro de la version SMS. Se decodifican
#   con `alt_extract.tbl` y se insertan con `alt_insert.tbl`.
#   Offsets (banco 0x08) y contenido:
#     0x0221D8  "PAUSED"                     (32 celdas)
#     0x0221F2  "TIME UP"                    (32 celdas)
#     0x02220D  "CAN THE MAGIC FLUTE BE USED? YES NO" (126 celdas)
#     0x022485  consejo de la pocion magica   (252 celdas)
#     0x022550  consejo de la cuerda          (252 celdas)
#     0x022602  consejo de los enemigos       (252 celdas)
#     0x0226A7  consejo de los zapatos de nubes (126 celdas)
ALT_BLOCK_LIST = (
    ("pause_box", 0x0221D8),
    ("time_up_box", 0x0221F2),
    ("flute_prompt", 0x02220D),
    ("hint_potion", 0x022485),
    ("hint_rope", 0x022550),
    ("hint_enemies", 0x022602),
    ("hint_shoes", 0x0226A7),
)

# Overlays alt SIN comprimir (name tables crudas del banco 0x08). El juego
# copia estas celdas al VRAM para dibujar las respuestas (YES/NO) del prompt y
# las redibuja al mover el cursor. No las toca `insert_alt` (son crudas).
#   nombre            ROM       celdas  rangos (celda, n)
# `flute_overlay`: dos copias de "YES" (el marcador [BA] y el marco no se tocan).
# El cargador copia desde HL=0xA265 (0x022265); las copias de "YES" estan en
# las celdas 7-9 y 17-19.
ALT_RAW_BLOCKS = (
    ("flute_overlay", 0x022265, 24, ((7, 3), (17, 3))),
)

# Metodo lz_patch (alt): name table LZ del banco 0x08 con una fuente propia.
# Se decodifica con alt_extract.tbl y se inserta con alt_insert.tbl. La fuente alt
# tiene DOS paginas de tiles: la base (atributo 0x19) y la EXTENDIDA (atributo
# 0x18), donde viven V=0x1E, X=0x1F, Z=0x20 y la puntuacion 0x21-0x24. El atributo
# lo fija `small_codes` (rango 0x1D-0x24 -> small_attr 0x18; el resto -> 0x19).
# Se extrae el bloque COMPLETO, con los 0x00 de delante y detras incluidos.


# ---------------------------------------------------------------------------
# Fuentes: bloques de tiles que el juego carga como fuentes.
#   Se vuelcan a `font_<nombre>.png` (PNG indexado de 16 colores, 16 tiles de
#   ancho, 1 pixel de PNG por pixel de tile). Cada fuente lleva su metodo de
#   compresion y sus bits por pixel:
#     * main    (0x021ED8, banco 0x08): fuente principal (39 tiles, PS-RLE 4bpp).
#                Cargador LD A,0x08 / LD (0xFFFF),A / LD HL,0x9ED8 / CALL 0x0725.
#     * small   (0x022151, banco 0x08): glifos sueltos (7 tiles, PS-RLE 4bpp).
#     * icons   (0x022960, banco 0x08): bloque de iconos/sprites (36, PS-RLE 4bpp).
#     * initial (0x070041, banco 0x1C): fuente completa A-Z 0-9 y signos
#                (52 tiles, LZ 0x0884 4bpp).
#   IMPORTANTE: la rutina PS-RLE del juego (0x0725) empieza con `LD B,04` y
#   descomprime SIEMPRE 4 planos, sea cual sea el bpp aparente. Por eso las
#   fuentes PS-RLE son 4bpp (4 planos entrelazados) y hay que leer/escribir
#   los 4 planos: si solo se procesan 2, el juego lee los planos 3-4 de bytes
#   ajenos y la fuente sale corrupta (errores graficos).
#   La pantalla de creditos/estado usa la fuente `main` (name table sin
#   comprimir), por eso no tiene fuente propia.
FONTS = (
    # nombre      rom       metodo    tiles  bpp
    ("main",     0x021ED8, "psrle",  39, 4),
    ("small",    0x022151, "psrle",   7, 4),
    ("icons",    0x022960, "psrle",  36, 4),
    ("initial",  0x070041, "lz",     52, 4),
)
FONT_COLS = 16        # tiles por fila
FONT_SCALE = 1        # pixeles de PNG por pixel de tile (resolucion original)


# ---------------------------------------------------------------------------
# LZ del juego (rutina 0x0884; formato identico al de la version SMS)
# ---------------------------------------------------------------------------
def lz_decode(data, off):
    """Descomprime un flujo LZ del juego desde `off`. Devuelve bytes."""
    out = bytearray()
    pos = off
    n = len(data)
    while True:
        ctl = data[pos]
        pos += 1
        for _ in range(8):
            if ctl & 1:
                out.append(data[pos]); pos += 1
            else:
                c = data[pos]; b = data[pos + 1]; pos += 2
                if c == 0 and b == 0:
                    return bytes(out)
                value = ((0xF0 | (b & 0x0F)) << 8) | c
                dist = 0x10000 - value
                length = ((b & 0xF0) >> 4) + 3
                src = len(out) - dist
                for i in range(length):
                    out.append(out[src + i])
            ctl >>= 1
        if pos >= n:
            return bytes(out)


# ---------------------------------------------------------------------------
# PS-RLE del juego (rutina 0x0725)
# ---------------------------------------------------------------------------
def psrle_decode_planes(data, off, nplanes=4, max_out=0x4000):
    """Descomprime un bloque PS-RLE de `nplanes` planos desde `off`.

    Formato por plano: `0nnnnnnn dd` = tirada de n bytes iguales a dd,
    `1nnnnnnn dd...` = n bytes literales, `00` = fin del plano. Los bytes de
    cada plano se emiten de forma entrelazada (ver `psrle_interleave`).
    """
    planes = []
    pos = off
    n = len(data)
    for _ in range(nplanes):
        out = bytearray()
        while True:
            if pos >= n:
                planes.append(bytes(out))
                return planes
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
    return planes


def psrle_interleave(planes, nplanes=4):
    """Entrelaza los planos: byte i pertenece al plano (i % nplanes)."""
    n = min(len(p) for p in planes)
    out = bytearray()
    for i in range(n):
        for p in range(nplanes):
            out.append(planes[p][i])
    return bytes(out)


# ---------------------------------------------------------------------------
# Volcado de fuentes a PNG (indexado, 16 tiles de ancho)
# ---------------------------------------------------------------------------
def _font_tile_value(buf, t, r, c, bpp=4):
    """Valor 0..(2**bpp - 1) del pixel (r, c) del tile `t`.

    En 2bpp cada fila son 2 bytes (uno por plano), en 4bpp son 4; el tile
    entero son `8 * bpp` bytes.
    """
    rowbytes = bpp                # 1 byte por plano y fila
    base = t * (8 * rowbytes) + r * rowbytes
    v = 0
    for p in range(rowbytes):
        if base + p < len(buf) and (buf[base + p] & (1 << (7 - c))):
            v |= 1 << p
    return v


def render_font_png(buf, tiles, path, cols=FONT_COLS, scale=FONT_SCALE, bpp=4):
    """Vuelca `tiles` tiles de `bpp` bpp de `buf` a un PNG indexado (16 colores).

    El PNG usa paleta (bit depth 4 = 16 colores): el indice de cada pixel es su
    valor de tile (0..maxval) y la entrada de paleta `v` tiene el gris
    `v*255//maxval`. Asi la imagen se edita con una paleta minima y sigue siendo
    sin perdida (insert_all.py la lee con `convert("L")`).
    """
    from PIL import Image
    rows = (tiles + cols - 1) // cols if tiles else 1
    tile_px = 8 * scale
    maxval = 1
    for t in range(tiles):
        for r in range(8):
            for c in range(8):
                maxval = max(maxval, _font_tile_value(buf, t, r, c, bpp))
    img = Image.new("P", (cols * tile_px, rows * tile_px), 0)
    pal = []
    for v in range(256):
        g = (v * 255 // maxval) if v <= maxval else 0
        pal += [g, g, g]
    img.putpalette(pal)
    px = img.load()
    for t in range(tiles):
        ox = (t % cols) * tile_px
        oy = (t // cols) * tile_px
        for r in range(8):
            for c in range(8):
                v = _font_tile_value(buf, t, r, c, bpp)
                for sy in range(scale):
                    for sx in range(scale):
                        px[ox + c * scale + sx, oy + r * scale + sy] = v
    img.save(path, bits=4)
    return img.size


def extract_fonts(data):
    """Descomprime y vuelca todas las fuentes del juego a `font_<nombre>.png`."""
    written = []
    for name, rom, method, tiles, bpp in FONTS:
        if method == "psrle":
            buf = psrle_interleave(psrle_decode_planes(data, rom, bpp), bpp)
        else:
            buf = lz_decode(data, rom)
        n = min(tiles, len(buf) // (8 * bpp))
        if n <= 0:
            print("  (fuente %s: 0 tiles, se omite)" % name)
            continue
        path = os.path.join(HERE, "font_%s.png" % name)
        size = render_font_png(buf, n, path, bpp=bpp)
        written.append((name, rom, n, size, path))
    return written


# ---------------------------------------------------------------------------
# Tabla .tbl y utilidades
# ---------------------------------------------------------------------------
def load_extract_tbl(path):
    """dict {byte:int -> str} a partir de main_extract.tbl."""
    table = {}
    with open(path, "r", encoding="utf-8") as fh:
        for line in fh:
            line = line.rstrip("\n").rstrip("\r")
            if not line or line[0] in ";#":
                continue
            if "=" not in line:
                continue
            hx, val = line.split("=", 1)
            try:
                code = int(hx.strip(), 16)
            except ValueError:
                continue
            table[code] = val
    return table


def decode_pair_bytes(buf, tbl):
    """Bytes de name table (pares) -> texto usando la tabla."""
    return "".join(tbl.get(buf[i], "[%02X]" % buf[i])
                   for i in range(0, len(buf) - 1, 2))


def code_to_text(code, tbl):
    return tbl.get(code, "[%02X]" % code)


# ---------------------------------------------------------------------------
# Extraccion
# ---------------------------------------------------------------------------
def extract_stage_names(data, tbl):
    messages = {}
    for i in range(STAGE_COUNT):
        logical = data[STAGE_TABLE_ROM + i * 2] | (data[STAGE_TABLE_ROM + i * 2 + 1] << 8)
        block_off = STAGE_BANK_BASE + (logical - 0x8000)
        raw = data[block_off:block_off + STAGE_CELLS * 2]
        messages[str(i)] = {
            "text_offset": "0x000000",
            "pointer_offset": "0x%04X" % (i * 2),
            "block_address": "0x%06X" % block_off,
            "logical_address": "0x%04X" % logical,
            "cells": STAGE_CELLS,
            "original": decode_pair_bytes(raw, tbl),
        }

    return {
        "text_address": "0x%06X" % (STAGE_BANK_BASE + (data[STAGE_TABLE_ROM] |
                                                       (data[STAGE_TABLE_ROM + 1] << 8) - 0x8000)),
        "pointer_address": "0x%06X" % STAGE_TABLE_ROM,
        "bank": "0x1C",
        # Metodo: name tables SIN comprimir, 19 celdas x 2 bytes, atributo 0x00.
        "method": "raw_nametable",
        "entry_size": 2,
        "attribute": "0x%02X" % STAGE_ATTR,
        "cells": STAGE_CELLS,
        "messages": messages,
    }


def extract_intro_story(data, tbl):
    """Pantallas de historia de la intro: texto plano de 5 filas (sin comprimir).

    Cada pantalla es un flujo de 1 byte/caracter; `original` es la concatenacion
    de las filas (longitud rows*cols). El ancho (cols) va en cada mensaje para
    poder reinsertar/centrar.
    """
    messages = {}
    for i, (block_off, logical, imm, rows, cols) in enumerate(INTRO_STORY_SCREENS):
        raw = data[block_off:block_off + rows * cols]
        text = "".join(code_to_text(b, tbl) for b in raw)
        messages[str(i)] = {
            "text_offset": "0x000000",
            "pointer_offset": "0x000000",
            "block_address": "0x%06X" % block_off,
            "logical_address": "0x%04X" % logical,
            "loader_address": "0x%06X" % imm,
            "rows": rows,
            "cols": cols,
            "cells": rows * cols,
            "original": text,
        }

    return {
        "text_address": "0x%06X" % INTRO_STORY_SCREENS[0][0],
        "pointer_address": "0x000000",
        "bank": "0x%02X" % INTRO_STORY_BANK,
        # Metodo: texto plano 1 byte/caracter (0x00=espacio), 5 filas, sin
        # comprimir y sin tabla de punteros (direccion fija en el codigo).
        "method": "raw_text_rows",
        "entry_size": 1,
        "note": "5 filas; 1 byte/caracter (0x00=espacio); texto centrado por filas.",
        "messages": messages,
    }


STREAM_CTRL = {0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF}


def decode_stream(buf, tbl):
    """Flujo de dialogo -> texto. Los controles salen como [HH] (y su operando)."""
    out = []
    i = 0
    while i < len(buf):
        b = buf[i]
        if b == 0xFB:
            out.append("[FB]")
            out.append("[%02X]" % buf[i + 1] if i + 1 < len(buf) else "")
            i += 2
        elif b in STREAM_CTRL:
            out.append("[%02X]" % b)
            i += 1
        else:
            out.append(code_to_text(b, tbl))
            i += 1
    return "".join(out)


def extract_dialogues(data, tbl):
    messages = {}
    for k in range(DIALOG_COUNT):
        toff = DIALOG_TABLE_ROM + k * 2
        logical = data[toff] | (data[toff + 1] << 8)
        if logical == 0:
            continue
        block_off = DIALOG_BANK_BASE + (logical - 0x8000)
        raw = lz_decode(data, block_off)
        messages[str(k)] = {
            "text_offset": "0x000000",
            "pointer_offset": "0x%04X" % (k * 2),
            "block_address": "0x%06X" % block_off,
            "logical_address": "0x%04X" % logical,
            "bytes": len(raw),
            "original": decode_stream(raw, tbl),
        }

    return {
        "text_address": "0x%06X" % DIALOG_BANK_BASE,
        "pointer_address": "0x%06X" % DIALOG_TABLE_ROM,
        "bank": "0x%02X" % DIALOG_BANK,
        # Metodo: LZ 0x0884 -> flujo de 1 byte/caracter con control [F8]-[FF].
        # Tabla de punteros: 10 entradas (5 pares dialogo largo / recordatorio).
        "method": "lz_text",
        "entry_size": 2,
        "attributes": "0 (normal) / 8 (resaltado) via [F9]/[FA]",
        "messages": messages,
    }


def _strip_credit_fill(data, lo, hi):
    """Recorta tandas (>= 2 celdas) de relleno 'H'(0x08)/'B'(0x02) de los extremos.

    Solo mueve el inicio/fin del mensaje; las celdas de relleno que quedan por
    fuera no se tocan al insertar (el texto original permanece igual).
    """
    def run_left(p):
        k = p
        while k < hi and data[k] in (0x02, 0x08):
            k += 2
        return k

    def run_right(p):
        k = p
        while k - 2 >= lo and data[k - 2] in (0x02, 0x08):
            k -= 2
        return k

    changed = True
    while changed and lo < hi:
        changed = False
        k = run_left(lo)
        if k - lo >= 4:                # 2 o mas celdas de relleno a la izquierda
            lo = k
            changed = True
        k = run_right(hi)
        if hi - k >= 4:                # 2 o mas celdas de relleno a la derecha
            hi = k
            changed = True
    return lo, hi


def extract_credits(data, tbl):
    """Estado + creditos: campos fijos (estado) + palabras (cast/staff)."""
    known = set(range(0x01, 0x1F)) | {0x20, 0x2A}
    messages = {}
    idx = 0

    def add(off, cells, text):
        nonlocal idx
        messages[str(idx)] = {
            "text_offset": "0x%06X" % (off - CREDITS_ROM),
            "pointer_offset": "0x0000",
            "block_address": "0x%06X" % off,
            "cells": cells,
            "original": text,
        }
        idx += 1

    # celdas de los campos fijos (se extraen aparte; se excluyen del barrido)
    excl = set()
    for off, cells in CREDITS_FIXED_FIELDS:
        excl.update(range(off, off + cells * 2))

    # 1) Campos fijos (pantalla de estado y titulo de cast).
    for off, cells in CREDITS_FIXED_FIELDS:
        text = "".join(code_to_text(data[off + 2 * k], tbl) for k in range(cells))
        add(off, cells, text)

    # 2) Palabras de la pantalla de cast/staff. Se escanean las DOS paridades
    #    (las lineas alternan inicio par/impar por el relleno de longitud impar)
    #    y se recortan los tiles de relleno 'H'/'B' de los extremos.
    for par in (0, 1):
        i = CREDITS_ROM + par
        while i < CREDITS_END:
            if i in excl or data[i] not in known:
                i += 2
                continue
            j = i
            while (j < CREDITS_END and j not in excl and data[j] in known):
                j += 2
            lo, hi = _strip_credit_fill(data, i, j)
            # hueco de espacios a la derecha (para dar margen a la traduccion)
            r = hi
            while r < CREDITS_END and r not in excl and data[r] == 0x00:
                r += 2
            cells = (r - lo) // 2
            text = "".join(code_to_text(data[lo + 2 * k], tbl) for k in range(cells))
            core = [c for c in text if c not in " "]
            if core:
                common = max(core.count(c) for c in set(core))
                if common <= len(core) * 0.6:   # descarta rellenos uniformes
                    add(lo, cells, text)
            i = j

    return {
        "text_address": "0x%06X" % CREDITS_ROM,
        "pointer_address": "0x000000",
        "bank": "0x19",
        # Metodo: name tables sin comprimir del banco 0x19; solo se parchean las
        # celdas de texto, conservando el relleno y los atributos.
        "method": "raw_nametable_runs",
        "entry_size": 2,
        "preserve_attrs": True,
        "messages": messages,
    }


def extract_map_pause(data, tbl):
    """Menu de pausa del mapa mundi: name table 20x18 sin comprimir (banco 0x1D).

    Solo se extraen las celdas de las etiquetas; al insertar se conservan los
    atributos y los tiles de borde, y cada etiqueta respeta su numero de celdas.
    """
    messages = {}
    for i, (cell, n) in enumerate(MAP_PAUSE_FIELDS):
        off = MAP_PAUSE_ROM + cell * 2
        text = "".join(code_to_text(data[off + 2 * k], tbl) for k in range(n))
        messages[str(i)] = {
            "text_offset": "0x%04X" % (cell * 2),
            "pointer_offset": "0x0000",
            "block_address": "0x%06X" % off,
            "cell": cell,
            "cells": n,
            "original": text,
        }
    return {
        "text_address": "0x%06X" % MAP_PAUSE_ROM,
        "pointer_address": "0x000000",
        "bank": "0x%02X" % MAP_PAUSE_BANK,
        # Metodo: name table sin comprimir, banco 0x1D; solo se parchean las
        # celdas de texto, conservando el relleno y los atributos.
        "method": "raw_nametable_runs",
        "entry_size": 2,
        "preserve_attrs": True,
        "width": MAP_PAUSE_WIDTH,
        "height": MAP_PAUSE_HEIGHT,
        "loader_address": "0x%06X" % MAP_PAUSE_LOADER,
        "messages": messages,
    }


def extract_alt_block(data, tbl, name, rom):
    """Extrae un bloque alt (name table LZ, banco 0x08).

    Se extrae el bloque ENTERO, con los espacios en blanco (0x00) de delante y
    de atras incluidos en `original`/`translated`. Asi el JSON refleja la
    maquetacion real y la traduccion ocupa todo el ancho del bloque. `text_span`
    deja constancia del tramo no vacio (primera..ultima celda con texto).

    Nota: en la name table alt 0x00 es a la vez el espacio y el relleno; las
    celdas de relleno llevan atributo 0x19 (igual que las letras), de modo que
    reescribirlas no cambia el resultado.
    """
    raw = lz_decode(data, rom)
    cells = [raw[i] for i in range(0, len(raw), 2)]
    nz = [i for i, c in enumerate(cells) if c != 0]
    span = (nz[0], nz[-1] + 1) if nz else (0, 0)
    n = len(cells)
    text = "".join(tbl.get(c, "[%02X]" % c) for c in cells)
    return {
        "text_address": "0x%06X" % rom,
        "pointer_address": "0x000000",
        "bank": "0x08",
        "method": "lz_patch",
        "entry_size": 2,
        "attribute": "0x19",
        "small_attr": "0x18",
        "small_codes": "0x1D-0x24",
        "preserve_attrs": True,
        "region_start": 0,
        "region_cells": n,
        "cells": n,
        "text_span": [span[0], span[1]],
        "messages": {
            "0": {
                "text_offset": "0x0000",
                "cell": 0,
                "cells": n,
                "original": text,
            }
        },
    }


def extract_alt_raw(data, tbl, name, rom, cells, ranges):
    """Extrae un overlay alt crudo (name table SIN comprimir) del banco 0x08.

    `ranges` = lista de `(celda, n)` con los tramos de texto editable; el resto
    de la tabla (marcadores [BA]/[B4] y el marco) no se toca al insertar.
    """
    msgs = {}
    for i, (cell, n) in enumerate(ranges):
        off = rom + cell * 2
        text = "".join(tbl.get(data[off + 2 * j], "[%02X]" % data[off + 2 * j])
                       for j in range(n))
        msgs[str(i)] = {
            "text_offset": "0x%06X" % off,
            "pointer_offset": "0x0000",
            "block_address": "0x%06X" % rom,
            "cell": cell,
            "cells": n,
            "original": text,
        }
    return {
        "text_address": "0x%06X" % rom,
        "pointer_address": "0x000000",
        "bank": "0x08",
        "method": "raw_alt",
        "entry_size": 2,
        "attribute": "0x19",
        "small_attr": "0x18",
        "small_codes": "0x1D-0x24",
        "preserve_attrs": True,
        "cells": cells,
        "note": "Name table cruda (sin comprimir): copias de 'YES' que se "
                "redibujan al mover el cursor. El marcador [BA] y el marco no "
                "se tocan.",
        "messages": msgs,
    }


def main():
    data = open(ROM_PATH, "rb").read()
    tbl = load_extract_tbl(TBL_PATH)

    out = {
        "schema": 1,
        "comment": "Textos de Land of Illusion (GG). Ver main_extract.tbl.",
        "blocks": {
            "stage_names": extract_stage_names(data, tbl),
            "intro_story": extract_intro_story(data, tbl),
            "dialogues": extract_dialogues(data, tbl),
            "credits_status": extract_credits(data, tbl),
            "map_pause": extract_map_pause(data, tbl),
        },
    }

    with open(OUT_PATH, "w", encoding="utf-8") as fh:
        json.dump(out, fh, ensure_ascii=False, indent=2)
        fh.write("\n")

    n = sum(len(b["messages"]) for b in out["blocks"].values())
    print("texts.json escrito: %s (%d mensajes en %d bloques)"
          % (OUT_PATH, n, len(out["blocks"])))

    # --- bloques alt (fuente alternativa) -> texts_alt.json -----------------
    alt_tbl = load_extract_tbl(ALT_TBL_PATH)
    alt_blocks = {name: extract_alt_block(data, alt_tbl, name, rom)
                  for name, rom in ALT_BLOCK_LIST}
    for name, rom, cells, ranges in ALT_RAW_BLOCKS:
        alt_blocks[name] = extract_alt_raw(data, alt_tbl, name, rom, cells, ranges)
    alt_out = {
        "schema": 1,
        "comment": "Overlays de fuente alternativa (GG). Ver alt_extract.tbl.",
        "table": "alt_extract.tbl",
        "blocks": alt_blocks,
    }

    with open(ALT_OUT_PATH, "w", encoding="utf-8") as fh:
        json.dump(alt_out, fh, ensure_ascii=False, indent=2)
        fh.write("\n")

    na = sum(len(b["messages"]) for b in alt_out["blocks"].values())
    print("texts_alt.json escrito: %s (%d mensajes en %d bloques)"
          % (ALT_OUT_PATH, na, len(alt_out["blocks"])))
    for name, blk in alt_out["blocks"].items():
        print("  %-12s %r" % (name, blk["messages"]["0"]["original"]))

    # --- fuentes del juego -> font_<nombre>.png -----------------------------
    fonts = extract_fonts(data)
    print("Fuentes volcadas (%d):" % len(fonts))
    for name, rom, n, size, path in fonts:
        print("  font_%s.png  %d tiles  0x%06X  %dx%d px"
              % (name, n, rom, size[0], size[1]))


if __name__ == "__main__":
    main()
