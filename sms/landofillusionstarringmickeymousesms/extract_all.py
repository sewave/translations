#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""extract_all.py - Extractor de textos de
"Land of Illusion Starring Mickey Mouse (Europe, Brazil) (En).sms"

Genera `texts.json` (fuente principal, `main_extract.tbl`), `texts_alt.json`
(los bloques del banco 0x08 con fuente alternativa, `alt_extract.tbl`),
`texts_credits.json` (creditos) y, ademas, vuelca **todas las fuentes** del
juego a `font_<nombre>.png` (escala de grises, 16 tiles de ancho) a partir de
la ROM base.

El juego guarda el texto como *name table*: por cada celda, 2 bytes
(codigo_de_caracter, atributo). El byte bajo es el caracter; el atributo (0x08)
no forma parte del texto.

Hay tres tipos de bloque en esta ROM:

  * `lz_nametable`       -> varias pantallas comprimidas con el LZ del juego
                            (rutina 0x088D). Cada pantalla son 72 bytes = 36
                            celdas. Hay una tabla de punteros (16 bits, direccion
                            logica en el banco 0x1C) que apunta a cada pantalla.
  * `raw_nametable`      -> una name table sin comprimir (los creditos/casting).
  * `lz_nametable_fixed` -> las pantallas de historia de la intro. Tambien son
                            name tables comprimidas con el LZ 0x088D, pero NO
                            tienen tabla de punteros: el cargador lleva la
                            direccion logica como inmediato (`LD HL,<dir>`).
                            Cada pantalla son 5 filas x 28 columnas = 140
                            celdas y usa el atributo 0x00.
  * `lz_text`             -> los dialogos. Tambien van comprimidos con el LZ
                            0x088D, pero al descomprimir NO son una name table:
                            son un flujo de 1 byte por caracter (0x00 = espacio,
                            0x01-0x36 = caracter) salpicado de codigos de
                            control 0xF9-0xFF. Hay una tabla de punteros de
                            pares (dialogo largo / recordatorio corto).
  * `lz_patch`            -> parchea celdas de texto dentro de un bloque LZ que
                            es una name table con atributos variados (la
                            pantalla de estado: POWER/TRIES/SCORE/ITEM/TIME).
                            Solo se reescriben las celdas indicadas.

Uso:  python extract_all.py
"""

import json
import os
import struct
import sys

ROM_NAME = "Land of Illusion Starring Mickey Mouse (Europe, Brazil) (En).sms"
HERE = os.path.dirname(os.path.abspath(__file__))
ROM_PATH = os.path.join(HERE, ROM_NAME)
TBL_PATH = os.path.join(HERE, "main_extract.tbl")
OUT_PATH = os.path.join(HERE, "texts.json")
# Tabla y salida alternativas (bloques del banco 0x08 con fuente propia).
ALT_TBL_PATH = os.path.join(HERE, "alt_extract.tbl")
ALT_OUT_PATH = os.path.join(HERE, "texts_alt.json")
# Tercer juego: creditos finales (STAFF) y mensaje final (TOTAL POWER STARS),
# con su propia fuente/tabla. PENDIENTE de localizar (ver work/FINDINGS.md).
CREDITS_TBL_PATH = os.path.join(HERE, "credits_extract.tbl")
CREDITS_OUT_PATH = os.path.join(HERE, "texts_credits.json")

# --- Bloques conocidos (offset de ROM) -------------------------------------
# Tabla de punteros de las pantallas de nombre de fase.
#   banco 0x1C  ->  offset de ROM 0x1C * 0x4000 = 0x70000
#   direccion logica 0x982A  ->  0x70000 + (0x982A - 0x8000) = 0x7182A
STAGE_TABLE_ROM = 0x7182A
STAGE_BANK_BASE = 0x70000        # offset de ROM del inicio (logico 0x8000)
STAGE_COUNT = 15
STAGE_CELLS = 36

# Creditos / casting (name table sin comprimir)
CREDITS_ROM = 0x64228
CREDITS_CELLS = 195

# --- Pantallas de historia de la intro (LZ con direccion fija en el codigo) ---
# El cargador (ROM 0x0013F0 y 0x001450) hace, para cada pantalla:
#     LD HL,<dir logica>        ; inmediato de 2 bytes
#     LD DE,D000 / CALL 088D    ; descomprime
#     LD DE,CE84 / LD BC,0538 / CALL 0AED   ; 5 filas de 28 celdas
# Por eso: 5 filas x 28 columnas = 140 celdas, atributo 0x00, y no hay tabla
# de punteros (hay que parchear el inmediato si el bloque se reubica).
#
# (bloque_rom, dir_logica, inmediato_rom, hueco_hasta_el_siguiente_bloque)
STORY_BANK = 0x1A
STORY_BANK_BASE = STORY_BANK * 0x4000
STORY_SCREENS = (
    (0x06AC39, 0xAC39, 0x00142A, 0x06ACBB - 0x06AC39),
    (0x06ACBB, 0xACBB, 0x00148F, 0x06AD3D - 0x06ACBB),
)
STORY_CELLS = 140
STORY_ROWS = 5
STORY_COLS = 28
STORY_ATTR = 0x00

# --- Dialogos (texto con codigos de control, comprimido con el LZ) ----------
# Tabla maestra en ROM 0x0727F9 (banco 0x1C, logico 0x87F9): 6 registros de
# 4 bytes. El registro 0 esta a cero y los registros 1..5 son pares
# (dialogo largo, recordatorio corto). El cargador es ROM 0x005DA9:
#     LD A,1C / LD (FFFF),A
#     LD HL,A7F9 / A = indice*4 / HL += A
#     (segun un bit de C9CC) HL += 2
#     HL = puntero / LD DE,D000 / CALL 088D     -> descomprime a D000
# El bucle que lo dibuja es ROM 0x0061B8 y trata 0xF9..0xFF asi:
#   0xF9  atributo 0 (texto normal)      0xFA  atributo 8 (texto resaltado)
#   0xFB <n>  activa el objeto/sprite n (2 bytes)
#   0xFC  fin   0xFD  espera tecla   0xFE  salto de linea grande
#   0xFF  salto de linea
DIALOG_TABLE_ROM = 0x0727F9
DIALOG_BANK = 0x1C
DIALOG_BANK_BASE = DIALOG_BANK * 0x4000
DIALOG_BANK_END = DIALOG_BANK_BASE + 0x4000
DIALOG_TABLE_ENTRIES = 6

# --- Pantalla de estado (name table con atributos variados) ----------------
HUD_ROM = 0x070358
HUD_LOADER = 0x005353        # inmediato de `LD HL,8358` en 0x005352
HUD_CELLS = 896              # 28 filas x 32 columnas
HUD_ATTR = 0x08              # atributo que se escribe en las celdas parcheadas

# --- Creditos finales (STAFF) y mensaje final (TOTAL POWER STARS) -------------
# Las pantallas de resultados y de cast/staff usan una CUARTA fuente, distinta
# de la principal y de la del banco 0x08:
#   * fuente: LZ 0x088D en ROM 0x064509 -> 1536 bytes = 48 tiles 4bpp (32 B/tile)
#     (la carga la rutina del estado de creditos con el banco 0x19 seleccionado).
#   * orden de glifos: glifo = byte, con 0x11 = espacio, 0x12 = 'O'/0,
#     0x13..0x1B = '1'..'9', 0x1C..0x34 = 'A'..'Z' (sin la Ñ), y los signos
#     0x35='*' 0x36='.' 0x37=',' 0x38='-' 0x39="'" 0x3A='!' 0x3B=';' 0x3C=':'.
#     Ver credits_extract.tbl.
#   * el texto NO esta comprimido: es una name table cruda de celdas de 2 bytes
#     (glifo + atributo). El atributo es 0x00 en el texto y 0x02 en los marcos.
#     La paridad de cada campo varia (el glifo puede ir en el byte par o impar),
#     asi que cada campo se guarda con la direccion ABSOLUTA de su primer glifo.
#   * los campos del "pool" de resultados se copian a RAM con LDIR de longitud
#     fija (ver los cargadores 0x001ACC..0x001B91), por lo que hay que respetar
#     EXACTAMENTE la longitud de cada subcadena.
#   * los campos de cast/staff son filas de 24 celdas leidas por el printer
#     (0x001A4D..0x001A50) desde 0x064843.
#
# Cada entrada de CREDIT_BLOCKS es (nombre, rom_ancla, banco, campos), donde
# `campos` es una tupla de (offset_absoluto_del_primer_glifo, n_celdas).
CREDIT_BLOCKS = (
    ("results_pool", 0x064767, "0x19", (
        (0x064767, 17),   # TOTAL POWER STARS
        (0x064789, 8),    # NO BONUS
        (0x064799, 11),   # TRIES BONUS
        (0x0647AF, 11),   # " YOUR SCORE"
        (0x0647C5, 11),   # "   HI-SCORE"
    )),
    ("cast_staff", 0x064843, "0x19", (
        (0x064844, 24),   # LAND
        (0x064876, 24),   # OF
        (0x0648A8, 24),   # ILLUSION
        (0x0648E5, 24),   # CAST
        (0x064919, 24),   # MICKEY MOUSE
        (0x06494C, 24),   # MINNIE MOUSE
        (0x06497F, 24),   # DONALD DUCK
        (0x0649B2, 24),   # DAISY DUCK
        (0x0649E5, 24),   # GOOFY
        (0x064A18, 24),   # HORACE HORSECOLLAR
        (0x064A59, 24),   # STAFF
        (0x064A92, 24),   # MAIN PROGRAMER
        (0x064AC5, 24),   # TAKU SHOJI
        (0x064AFC, 24),   # OBJECT PROGRAMER
        (0x064B2F, 24),   # JUNJY SIVA
        (0x064B66, 24),   # MESSAGE SCREEN PROGRAMER
        (0x064B99, 24),   # Y.HIRAI
        (0x064BD0, 24),   # ARTIST
        (0x064C03, 24),   # CHOKO KAWAGUCHI
        (0x064C3A, 24),   # BACKGROUND ARTIST
        (0x064C6D, 24),   # GEN ADACHI
        (0x064C9F, 24),   # CHOKO KAWAGUCHI
        (0x064CD1, 24),   # IHSAKAT EMUK
        (0x064D08, 24),   # SOUND PROGRAMER
        (0x064D3B, 24),   # T.SAWADA
        (0x064D72, 24),   # SOUND COMPOSERS
        (0x064DA5, 24),   # T.SAWADA
        (0x064DD7, 24),   # P.CHUNG
        (0x064E09, 24),   # IPPO
        (0x064E40, 24),   # GAME DESIGNERS
        (0x064E73, 24),   # YOSHIO YOSHIDA
        (0x064EA5, 24),   # GO SUGAI
        (0x064EDC, 24),   # DIRECTOR
        (0x064F0F, 24),   # YOSHIO YOSHIDA
        (0x064F46, 24),   # WALT DISNEY PRODUCER
        (0x064F79, 24),   # PATRICK GILMORE
        (0x064FB0, 24),   # SPECIAL THANKS TO
        (0x064FE3, 24),   # LLG
        (0x065015, 24),   # M.WAKA
        (0x065047, 24),   # YUICHIM
        (0x065079, 24),   # RAIZOU
        (0x0650AB, 24),   # F.MIKE
        (0x0650DD, 24),   # REI
        (0x06510F, 24),   # BERT
        (0x065141, 24),   # MICHAEL SPAHN
        (0x065173, 24),   # RAIHI
        (0x0651A5, 24),   # NICE GAISU---
        (0x0651D7, 24),   # YOSIRA SAMA
    )),
    ("ending_results", 0x06521E, "0x19", (
        (0x06521F, 24),   # TORTAL POWER STARS
        (0x065257, 24),   # NO BONUS
        (0x06528C, 24),   # TRIES BONUS
        (0x0652FB, 24),   # YOUR SCORE
        (0x065362, 24),   # HI-SCORE
    )),
)


def extract_credits_screen(data, tbl, spec):
    """Extrae un bloque de las pantallas de creditos/mensaje final.

    El texto es una name table cruda de celdas de 2 bytes (glifo + atributo)
    con paridad variable. Cada campo de `spec[3]` da la direccion absoluta de su
    primer glifo y su numero de celdas; los glifos van a `off + 2*i`. El byte de
    atributo (0x00 texto / 0x02 marco) NO se toca.
    """
    name, rom, bank, fields = spec
    messages = {}
    for i, (off, cells) in enumerate(fields):
        codes = [data[off + 2 * j] for j in range(cells)]
        messages[str(i)] = {
            "text_offset": "0x%06X" % off,
            "pointer_offset": "0x0000",
            "block_address": "0x%06X" % rom,
            "cells": cells,
            "original": "".join(tbl.get(c, "[%02X]" % c) for c in codes),
        }

    return {
        "text_address": "0x%06X" % rom,
        "pointer_address": "0x000000",
        "bank": bank,
        "method": "raw_patch",
        "table": "credits",
        "note": ("Name table cruda (glifo + atributo). No tocar el byte de "
                 "atributo ni los marcos [02]. Los campos de longitud fija se "
                 "rellenan con espacios si la traduccion es mas corta."),
        "entry_size": 2,
        "attribute": "0x00",
        "cells": max(c for _, c in fields),
        "messages": messages,
    }


# --- Cajas de pausa / mensajes (banco 0x08, name tables LZ de 32x4 celdas) ---
# El juego las descomprime a RAM con el mismo LZ 0x088D (con el banco 0x08 ya
# seleccionado) y las muestra con su propia fuente:
#     21 F2 A2 / 11 00 C8 / CD 8D 08   -> caja "PAUSED"          (inmediato 0x2B38)
#     21 B3 A3 / 11 00 C8 / CD 8D 08   -> caja "TIME UP"         (inmediato 0x2D97)
#     21 3D A3 / 11 00 C8 / CD 8D 08   -> pregunta del flautin    (inmediato 0x2B33)
# Son name tables de 32 columnas x 4 filas (128 celdas). En esta fuente las
# letras se dibujan con los tiles 0x100+codigo (atributo 0x19); las letras que
# no existen en la fuente principal (G H J K Q V X Y Z) estan en los tiles
# 0x1E-0x26 (atributo 0x18). Solo se extraen/parchean las celdas del texto; el
# marco (tiles 0xB7-0xBA) y las celdas de valores no se tocan.
PAUSE_ATTR = 0x19
PAUSE_BOXES = (
    # nombre            rom        loader      rangos de celdas (inicio, n)
    ("pause_box", 0x0222F2, 0x002B38, ((77, 6),)),
    ("time_up_box", 0x0223B3, 0x002D97, ((75, 8),)),
    ("flute_prompt", 0x02233D, 0x002B33, ((34, 29), (77, 4), (81, 4))),
)
PAUSE_NOTE = "Caja de 32x4 celdas; no tocar el marco."
FLUTE_NOTE = ("Caja de 32x4 celdas; las respuestas (SI y NO) van en la fila "
              "inferior: 'SI ' en las celdas 77-80 y '[B4]NO ' en las "
              "81-84 (el [B4] es el marcador de la opcion). No tocar el marco.")

# --- Overlay crudo del prompt del flautin (banco 0x08) ----------------------
# La rutina 0x2BAA recarga este bloque CRUDO (sin comprimir, 2 bytes por celda)
# en VRAM (destino 0x7D98) cada vez que el cursor de la respuesta cambia, para
# redibujar la fila SI/NO. Contiene OTRA copia de la respuesta "YES" en dos
# sitios (celdas 3-5 y 9-11), ademas del marcador [B4] (celdas 2 y 13) y el
# marco (tiles 0xBC-0xBF). Si no se traduce, al mover el cursor reaparece
# "YES" encima de la traduccion. Solo se extraen las dos copias de la
# respuesta; el marcador y el marco NO se tocan.
FLUTE_OVERLAY_ROM = 0x0223FF
FLUTE_OVERLAY_LOADER = 0x002BCD   # operando de `LD HL,A3FF` (0x2BCC)
FLUTE_OVERLAY_CELLS = 0x10C // 2  # 134 celdas (268 bytes)
FLUTE_OVERLAY_RANGES = ((3, 3), (9, 3))   # las dos copias de "YES"
FLUTE_OVERLAY_NOTE = ("Name table cruda (sin comprimir). Las dos copias de "
                      "'YES' se redibujan al mover el cursor; el [B4] y el "
                      "marco (0xBC-0xBF) no se tocan.")

# --- Barra de estado del mapa + pantallas de consejo (banco 0x08) ----------
# Son mas name tables LZ del banco 0x08 dibujadas con fuentes propias. En
# estas pantallas el atributo correcto depende del GLIFO, no de la posicion:
# las letras que existen en la fuente principal usan `letter_attr` y las que
# no existen (G H J K Q V X Y Z) mas la puntuacion usan `small_attr`. Los bits
# de giro del tile (0x02/0x04) se conservan de la celda original (importante
# para los remates/flechas giratorios de la barra de estado).
#
# * `map_statusbar` (0x022249): la barra del mapa POWER/TRIES/SCORE/TIME.
#   Letras en los tiles 0x1E-0x26 para las ausentes; cargador 0x002290.
# * Las 4 pantallas de consejo ("YOU FOUND ...") van en un cuadro de 26x18
#   celdas (26x9 la ultima) con el texto en las filas impares +1; la fuente
#   aqui carga la fuente SMALL en los tiles 0xE0-0xEE. Se referencian desde
#   la tabla de punteros 0x226DB (entradas en orden rope/potion/shoes/enemies).
STATUSBAR_LETTER_ATTR = 0x19
STATUSBAR_SMALL_ATTR = 0x18
HINT_LETTER_ATTR = 0x09
HINT_SMALL_ATTR = 0x08

# Bloques que se decodifican con `alt_extract.tbl` (fuente alternativa del
# banco 0x08) y por tanto van a `texts_alt.json` en vez de `texts.json`.
ALT_BLOCK_NAMES = (
    "pause_box",
    "time_up_box",
    "flute_prompt",
    "flute_overlay",
    "map_statusbar",
    "air_box",
    "hint_rope",
    "hint_potion",
    "hint_shoes",
    "hint_enemies",
)


def _hint_ranges(width, rows):
    """Rangos de las celdas de texto (24 celdas desde la columna 1) por fila."""
    return tuple((r * width + 1, 24) for r in rows)


# * `air_box` (0x0222DA): medidor de aire del banco 0x08. Cargador 0x00229E
#   (inmediato en 0x00229F), destino RAM C640; fuente de la barra de estado
#   (tiles 0x100+codigo, atributo 0x19). Son 21 celdas: [B7][B7] A I R
#   [B7][B7] + 7 rellenos + una fila de 7 tiles [B5]. Se extraen TODAS las
#   celdas (marco incluido) para poder reescribir la etiqueta "AIR"->"AIRE" y
#   recolocar/quitar el marco libremente; el tile de barra [B5] se conserva.
OVERLAY_BLOCKS = (
    # nombre, rom, loader(inmediato o entrada de tabla), celdas, ancho,
    # rangos de texto, atributo de letra, atributo de glifo pequeno, rango small
    ("map_statusbar", 0x022249, 0x002290, 128, 32, ((1, 31),),
     STATUSBAR_LETTER_ATTR, STATUSBAR_SMALL_ATTR, "0x1E-0x26"),
    ("air_box", 0x0222DA, 0x00229F, 21, 21, ((0, 21),),
     STATUSBAR_LETTER_ATTR, STATUSBAR_SMALL_ATTR, "0x1E-0x26"),
    ("hint_rope", 0x022931, 0x0226DB, 468, 26,
     _hint_ranges(26, (2, 4, 6, 11, 13, 15)),
     HINT_LETTER_ATTR, HINT_SMALL_ATTR, "0xE0-0xEE"),
    ("hint_potion", 0x022823, 0x0226DD, 468, 26,
     _hint_ranges(26, (2, 4, 6, 11, 13, 15)),
     HINT_LETTER_ATTR, HINT_SMALL_ATTR, "0xE0-0xEE"),
    ("hint_shoes", 0x022B1C, 0x0226DF, 234, 26,
     _hint_ranges(26, (2, 4, 6)),
     HINT_LETTER_ATTR, HINT_SMALL_ATTR, "0xE0-0xEE"),
    ("hint_enemies", 0x022A2B, 0x0226E1, 468, 26,
     _hint_ranges(26, (2, 4, 6, 11, 13, 15)),
     HINT_LETTER_ATTR, HINT_SMALL_ATTR, "0xE0-0xEE"),
)
STATUSBAR_NOTE = ("No tocar los tiles [B7]/[B8]/[BA] (marco y remates "
                  "girados).")
HINT_NOTE = "Lineas de 24 caracteres; no cambiar el numero de lineas."

# --- Fuentes -----------------------------------------------------------------
# Todos los bloques de tiles que el juego carga como fuentes, con su metodo
# de compresion y sus bits por pixel. Se vuelcan a PNG indexado de 16 colores
# (paleta), 16 tiles de ancho (cada pixel del PNG = 1 pixel del tile, escalado
# x FONT_SCALE).
#   * `main`    (0x21EB2, banco 0x08): fuente principal (39 tiles, PS-RLE 2bpp).
#   * `small`   (0x22108, banco 0x08): fuente pequena G H J K Q V X Y Z ...
#                (20 tiles, PS-RLE 2bpp).
#   * `icons`   (0x22E04, banco 0x08): bloque "grueso" (iconos/sprites, 36
#                tiles, PS-RLE 2bpp).
#   * `credits` (0x064509, banco 0x19): fuente de los creditos finales
#                (48 tiles, LZ 4bpp).
#   * `initial` (0x070021, banco 0x1C): fuente de la pantalla inicial
#                (62 tiles, LZ 4bpp).
FONTS = (
    # nombre      rom       metodo    tiles  bpp
    ("main",     0x21EB2, "psrle",  39, 2),
    ("small",    0x22108, "psrle",  20, 2),
    ("icons",    0x22E04, "psrle",  36, 2),
    ("credits",  0x064509, "lz",     48, 4),
    ("initial",  0x070021, "lz",     62, 4),
)
FONT_COLS = 16        # tiles por fila
FONT_SCALE = 1        # pixeles de PNG por pixel de tile (resolucion original)


def extract_pause_box(data, tbl, name, rom, loader, ranges):
    """Extrae las celdas de texto de una caja de pausa (banco 0x08)."""
    raw = lz_decode(data, rom)
    messages = {}
    for i, (cell, count) in enumerate(ranges):
        codes = [raw[(cell + j) * 2] for j in range(count)]
        messages[str(i)] = {
            "text_offset": "0x%04X" % (cell * 2),
            "pointer_offset": "0x0000",
            "block_address": "0x%06X" % rom,
            "cell": cell,
            "cells": count,
            "original": "".join(tbl.get(c, "[%02X]" % c) for c in codes),
        }

    return {
        "text_address": "0x%06X" % rom,
        "pointer_address": "0x000000",
        "bank": "0x08",
        "method": "lz_patch",
        "table": "alt",
        "note": FLUTE_NOTE if name == "flute_prompt" else PAUSE_NOTE,
        "entry_size": 2,
        "attribute": "0x%02X" % PAUSE_ATTR,
        "preserve_attrs": True,
        "letter_attr": "0x%02X" % PAUSE_ATTR,
        "small_attr": "0x%02X" % 0x18,
        "small_codes": "0x1E-0x26",
        "cells": len(raw) // 2,
        "loader_address": "0x%06X" % loader,
        "messages": messages,
    }


def extract_flute_overlay(data, tbl):
    """Extrae las copias de la respuesta del overlay crudo del prompt del
    flautin (bloque sin comprimir del banco 0x08 que se redibuja al mover el
    cursor)."""
    raw = data[FLUTE_OVERLAY_ROM:FLUTE_OVERLAY_ROM + FLUTE_OVERLAY_CELLS * 2]
    messages = {}
    for i, (cell, count) in enumerate(FLUTE_OVERLAY_RANGES):
        codes = [raw[(cell + j) * 2] for j in range(count)]
        messages[str(i)] = {
            "text_offset": "0x%06X" % (FLUTE_OVERLAY_ROM + cell * 2),
            "pointer_offset": "0x0000",
            "block_address": "0x%06X" % FLUTE_OVERLAY_ROM,
            "cell": cell,
            "cells": count,
            "original": "".join(tbl.get(c, "[%02X]" % c) for c in codes),
        }

    return {
        "text_address": "0x%06X" % FLUTE_OVERLAY_ROM,
        "pointer_address": "0x000000",
        "bank": "0x08",
        "method": "raw_patch",
        "table": "alt",
        "note": FLUTE_OVERLAY_NOTE,
        "entry_size": 2,
        "attribute": "0x%02X" % PAUSE_ATTR,
        "preserve_attrs": True,
        "letter_attr": "0x%02X" % PAUSE_ATTR,
        "small_attr": "0x%02X" % 0x18,
        "small_codes": "0x1E-0x26",
        "cells": FLUTE_OVERLAY_CELLS,
        "loader_address": "0x%06X" % FLUTE_OVERLAY_LOADER,
        "messages": messages,
    }


def extract_overlay(data, tbl, spec):
    """Extrae las celdas de texto de la barra de estado o de una pantalla de
    consejo (banco 0x08)."""
    (name, rom, loader, cells, width, ranges,
     letter_attr, small_attr, small_codes) = spec
    raw = lz_decode(data, rom)
    messages = {}
    for i, (cell, count) in enumerate(ranges):
        codes = [raw[(cell + j) * 2] for j in range(count)]
        messages[str(i)] = {
            "text_offset": "0x%04X" % (cell * 2),
            "pointer_offset": "0x0000",
            "block_address": "0x%06X" % rom,
            "cell": cell,
            "cells": count,
            "original": "".join(tbl.get(c, "[%02X]" % c) for c in codes),
        }

    return {
        "text_address": "0x%06X" % rom,
        "pointer_address": "0x000000",
        "bank": "0x08",
        "method": "lz_patch",
        "table": "alt",
        "note": (STATUSBAR_NOTE if name in ("map_statusbar", "air_box")
                 else HINT_NOTE),
        "entry_size": 2,
        "attribute": "0x%02X" % letter_attr,
        "preserve_attrs": True,
        "letter_attr": "0x%02X" % letter_attr,
        "small_attr": "0x%02X" % small_attr,
        "small_codes": small_codes,
        "cells": len(raw) // 2,
        "width": width,
        "loader_address": "0x%06X" % loader,
        "messages": messages,
    }


# ---------------------------------------------------------------------------
# LZ del juego (rutina 0x088D)
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
                out.append(data[pos])
                pos += 1
            else:
                c = data[pos]
                b = data[pos + 1]
                pos += 2
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
# PS-RLE del juego (rutina 0x0721 / 0x08C3)
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
# Volcado de fuentes a PNG (indexado de 16 colores, 16 tiles de ancho)
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

    El PNG usa paleta (bit depth 4 = 16 colores) en vez de 256 grises: el
    indice de cada pixel es directamente su valor de tile (0..maxval), y la
    entrada de paleta `v` tiene el gris `v*255//maxval`. Asi la imagen se
    edita con una paleta minima y sigue siendo sin perdida (insert_all.py la
    lee con `convert("L")`).
    """
    from PIL import Image
    rows = (tiles + cols - 1) // cols if tiles else 1
    tile_px = 8 * scale
    # Normaliza al maximo valor realmente usado (estas fuentes solo usan 0..3),
    # para que el gris aproveche todo el rango 0..255 en vez de quedar oscuro.
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
    # bits=4 -> PNG indexado de 16 colores (color type 3, bit depth 4).
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
# Tabla .tbl
# ---------------------------------------------------------------------------
def load_extract_tbl(path):
    """Devuelve dict {byte:int -> str} a partir de main_extract.tbl."""
    table = {}
    with open(path, "r", encoding="utf-8") as fh:
        for line in fh:
            line = line.rstrip("\n").rstrip("\r")
            if not line or line[0] in ";#":
                continue
            if "=" not in line:
                continue
            hx, val = line.split("=", 1)
            hx = hx.strip()
            try:
                code = int(hx, 16)
            except ValueError:
                continue
            table[code] = val
    return table


def decode_pair_bytes(buf, tbl):
    """Convierte bytes de name table (pares) a texto usando la tabla."""
    out = []
    for i in range(0, len(buf) - 1, 2):
        code = buf[i]
        out.append(tbl.get(code, "[%02X]" % code))
    return "".join(out)


# ---------------------------------------------------------------------------
# Extraccion
# ---------------------------------------------------------------------------
def extract_stage_names(data, tbl):
    """Extrae las pantallas de nombre de fase (LZ + name table)."""
    ptrs = []
    for i in range(STAGE_COUNT):
        lo = data[STAGE_TABLE_ROM + i * 2]
        hi = data[STAGE_TABLE_ROM + i * 2 + 1]
        ptrs.append(lo | (hi << 8))

    messages = {}
    for i, logical in enumerate(ptrs):
        block_off = STAGE_BANK_BASE + (logical - 0x8000)
        raw = lz_decode(data, block_off)
        text = decode_pair_bytes(raw, tbl)
        messages[str(i)] = {
            "text_offset": "0x000000",
            "pointer_offset": "0x%04X" % (i * 2),
            "block_address": "0x%06X" % block_off,
            "cells": len(raw) // 2,
            "original": text,
        }

    return {
        "text_address": "0x%06X" % (STAGE_BANK_BASE + (ptrs[0] - 0x8000)),
        "pointer_address": "0x%06X" % STAGE_TABLE_ROM,
        "method": "lz_nametable",
        "note": "2 filas x 18 celdas.",
        "entry_size": 2,
        "attribute": "0x08",
        "cells": STAGE_CELLS,
        "messages": messages,
    }


def extract_credits(data, tbl):
    """Extrae la name table sin comprimir de los creditos/casting."""
    raw = data[CREDITS_ROM:CREDITS_ROM + CREDITS_CELLS * 2]
    text = decode_pair_bytes(raw, tbl)
    return {
        "text_address": "0x%06X" % CREDITS_ROM,
        "pointer_address": "0x000000",
        "method": "raw_nametable",
        "note": "Cada nombre en su columna.",
        "entry_size": 2,
        "attribute": "0x08",
        "cells": CREDITS_CELLS,
        "messages": {
            "0": {
                "text_offset": "0x000000",
                "pointer_offset": "0x0000",
                "block_address": "0x%06X" % CREDITS_ROM,
                "cells": CREDITS_CELLS,
                "original": text,
            }
        },
    }


# ---------------------------------------------------------------------------
# Texto con codigos de control (dialogos)
# ---------------------------------------------------------------------------
STREAM_CTRL = {
    0xF9: 1, 0xFA: 1, 0xFB: 2, 0xFC: 1, 0xFD: 1, 0xFE: 1, 0xFF: 1,
}


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
        elif b in (0xF9, 0xFA, 0xFC, 0xFD, 0xFE, 0xFF):
            out.append("[%02X]" % b)
            i += 1
        else:
            out.append(tbl.get(b, "[%02X]" % b))
            i += 1
    return "".join(out)


def extract_dialogues(data, tbl):
    """Extrae los dialogos (tabla de pares largo/corto)."""
    messages = {}
    k = 0
    for entry in range(DIALOG_TABLE_ENTRIES):
        for half in (0, 2):
            toff = DIALOG_TABLE_ROM + entry * 4 + half
            lo = data[toff]
            hi = data[toff + 1]
            logical = lo | (hi << 8)
            if logical == 0:
                continue
            block_off = DIALOG_BANK_BASE + (logical - 0x8000)
            raw = lz_decode(data, block_off)
            text = decode_stream(raw, tbl)
            messages[str(k)] = {
                "text_offset": "0x000000",
                "pointer_offset": "0x%04X" % (toff - DIALOG_TABLE_ROM),
                "block_address": "0x%06X" % block_off,
                "logical_address": "0x%04X" % logical,
                "bytes": len(raw),
                "original": text,
            }
            k += 1

    return {
        "text_address": "0x%06X" % DIALOG_BANK_BASE,
        "pointer_address": "0x%06X" % DIALOG_TABLE_ROM,
        "bank": "0x%02X" % DIALOG_BANK,
        "method": "lz_text",
        "note": ("24 caracteres por linea. [FF] salto de linea, [FE] salto "
                 "grande, [FD] espera tecla, [FC] fin, [F9] normal, [FA] "
                 "resaltado, [FB][HH] activa el objeto HH."),
        "entry_size": 4,
        "attributes": "0 (normal) / 8 (resaltado) via [F9]/[FA]",
        "messages": messages,
    }


def extract_hud(data, tbl):
    """Extrae las celdas de texto de la pantalla de estado (POWER/SCORE/...)."""
    raw = lz_decode(data, HUD_ROM)
    rows = []
    rowtext = {}
    for r in (0, 24):
        start, count = (18, 12) if r == 0 else (1, 31)
        cells = [raw[(r * 32 + start + i) * 2] for i in range(count)]
        rowtext[r] = (start, count, "".join(tbl.get(c, "[%02X]" % c) for c in cells))

    messages = {}
    for idx, r in enumerate((0, 24)):
        start, count, text = rowtext[r]
        messages[str(idx)] = {
            "text_offset": "0x%04X" % ((r * 32 + start) * 2),
            "pointer_offset": "0x0000",
            "block_address": "0x%06X" % HUD_ROM,
            "row": r,
            "col": start,
            "cells": count,
            "original": text,
        }

    return {
        "text_address": "0x%06X" % HUD_ROM,
        "pointer_address": "0x000000",
        "bank": "0x1C",
        "method": "lz_patch",
        "note": "No tocar los tiles del marco [20]/[22].",
        "entry_size": 2,
        "attribute": "0x%02X" % HUD_ATTR,
        "preserve_attrs": True,
        "cells": HUD_CELLS,
        "loader_address": "0x%06X" % HUD_LOADER,
        "messages": messages,
    }


def extract_story(data, tbl):
    """Extrae las pantallas de historia (LZ + name table, direccion fija)."""
    messages = {}
    for i, (block_off, logical, loader, slot) in enumerate(STORY_SCREENS):
        raw = lz_decode(data, block_off)
        text = decode_pair_bytes(raw, tbl)
        messages[str(i)] = {
            "text_offset": "0x000000",
            "pointer_offset": "0x000000",
            "block_address": "0x%06X" % block_off,
            "logical_address": "0x%04X" % logical,
            "loader_address": "0x%06X" % loader,
            "max_size": "0x%06X" % slot,
            "cells": len(raw) // 2,
            "original": text,
        }

    return {
        "text_address": "0x%06X" % STORY_SCREENS[0][0],
        "pointer_address": "0x000000",
        "bank": "0x%02X" % STORY_BANK,
        "method": "lz_nametable_fixed",
        "note": "5 filas x 28 celdas; texto en las filas 0, 2 y 4.",
        "entry_size": 2,
        "attribute": "0x%02X" % STORY_ATTR,
        "cells": STORY_CELLS,
        "rows": STORY_ROWS,
        "cols": STORY_COLS,
        "messages": messages,
    }


def main():
    if not os.path.exists(ROM_PATH):
        sys.exit("No encuentro la ROM base: %s" % ROM_NAME)
    if not os.path.exists(TBL_PATH):
        sys.exit("No encuentro la tabla: main_extract.tbl")

    data = open(ROM_PATH, "rb").read()
    tbl = load_extract_tbl(TBL_PATH)
    alt_tbl = load_extract_tbl(ALT_TBL_PATH)
    credits_tbl = (load_extract_tbl(CREDITS_TBL_PATH)
                   if os.path.exists(CREDITS_TBL_PATH) else {})

    # Bloques "principales" (fuente principal, main_extract.tbl) en texts.json.
    doc = {
        "schema": 1,
        "comment": ("Textos del juego con la tabla principal "
                    "(main_extract.tbl). Cada celda es un codigo de caracter "
                    "(el atributo no se traduce)."),
        "blocks": {
            "stage_names": extract_stage_names(data, tbl),
            "intro_story": extract_story(data, tbl),
            "dialogues": extract_dialogues(data, tbl),
            "status_screen": extract_hud(data, tbl),
            "intro_cast": extract_credits(data, tbl),
        },
    }

    # Bloques con "tabla alternativa" (fuente propia del banco 0x08) en
    # texts_alt.json, decodificados con alt_extract.tbl.
    alt_doc = {
        "schema": 1,
        "comment": ("Textos con fuente alternativa del banco 0x08 (cajas de "
                    "pausa, barra de estado y consejos). Tabla: alt_extract.tbl."),
        "blocks": {
            "pause_box": extract_pause_box(data, alt_tbl, *PAUSE_BOXES[0]),
            "time_up_box": extract_pause_box(data, alt_tbl, *PAUSE_BOXES[1]),
            "flute_prompt": extract_pause_box(data, alt_tbl, *PAUSE_BOXES[2]),
            "flute_overlay": extract_flute_overlay(data, alt_tbl),
            "map_statusbar": extract_overlay(data, alt_tbl, OVERLAY_BLOCKS[0]),
            "air_box": extract_overlay(data, alt_tbl, OVERLAY_BLOCKS[1]),
            "hint_rope": extract_overlay(data, alt_tbl, OVERLAY_BLOCKS[2]),
            "hint_potion": extract_overlay(data, alt_tbl, OVERLAY_BLOCKS[3]),
            "hint_shoes": extract_overlay(data, alt_tbl, OVERLAY_BLOCKS[4]),
            "hint_enemies": extract_overlay(data, alt_tbl, OVERLAY_BLOCKS[5]),
        },
    }

    # Tercer documento: creditos finales + mensaje final (fuente propia 4bpp).
    credits_doc = {
        "schema": 1,
        "comment": ("Creditos finales (STAFF) y pantalla de resultados (TOTAL "
                    "POWER STARS) con su fuente 4bpp propia (LZ 0x064509). Se "
                    "decodifica con credits_extract.tbl. El texto es una name "
                    "table cruda; cada mensaje respeta la longitud exacta del "
                    "campo original (los subrangos se copian con LDIR)."),
        "blocks": {
            spec[0]: extract_credits_screen(data, credits_tbl, spec)
            for spec in CREDIT_BLOCKS
        },
    }

    for path, out in ((OUT_PATH, doc), (ALT_OUT_PATH, alt_doc),
                      (CREDITS_OUT_PATH, credits_doc)):
        with open(path, "w", encoding="utf-8") as fh:
            json.dump(out, fh, ensure_ascii=False, indent=2)
            fh.write("\n")
        msgs = sum(len(b["messages"]) for b in out["blocks"].values())
        print("Extraidos %d mensajes en %d bloques -> %s"
              % (msgs, len(out["blocks"]), os.path.basename(path)))
        for name, blk in out["blocks"].items():
            for k, m in blk["messages"].items():
                print("  %s[%s] %r" % (name, k, m["original"]))

    # Fuentes del juego -> font_<nombre>.png (escala de grises, 16 tiles).
    fonts = extract_fonts(data)
    print("Fuentes volcadas (%d):" % len(fonts))
    for name, rom, n, size, path in fonts:
        print("  font_%s.png  %d tiles  0x%06X  %dx%d px"
              % (name, n, rom, size[0], size[1]))


if __name__ == "__main__":
    main()
