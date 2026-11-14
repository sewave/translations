#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
extract_all.py - Extrae todos los textos de la ROM base a texts.json.

Uso:
    python extract_all.py [rom]              (por defecto: la ROM del proyecto)
    python extract_all.py --font-only [rom]  (solo font.png; admite la ROM ya traducida)

Salidas:
    texts.json          (textos originales, sin traducir)
    font.png            (fuente principal, 1:1; ver tr_plan.md)
    (lee main_extract.tbl para codificar los bytes)

Métodos soportados:
    ascii_z        cadena ASCII terminada en 0x00, referenciada por inmediatos / punteros
    ascii_z_table  igual, pero las cadenas se referencian desde una tabla de punteros
    lz_*           texto comprimido con el formato del juego (ver tr_plan.md)

Todos los datos de estructura (direcciones, sitios de parcheo, separadores) se guardan en
texts.json para que insert_all.py pueda rehacer el trabajo sin volver a analizar la ROM.
"""

import base64
import json
import os
import re
import struct
import sys
import zlib

# --------------------------------------------------------------------------------------
# Configuración
# --------------------------------------------------------------------------------------

DEFAULT_ROM = "Tom Mason's Dinosaurs for Hire (USA).md"
EXTRACT_TBL = "main_extract.tbl"
OUT_JSON = "texts.json"

# Fuente principal: recurso de gráficos 1 (91 glifos, 0x20-0x7A), 8x8 y 4bpp.
RES_TABLE = 0x617F0          # tabla de recursos: {método:word, src:long, tamaño:word}
FONT_RES = 1
FONT_FIRST = 0x20
FONT_TILES = 91
FONT_COLS = 16               # glifos por fila en font.png
FONT_CELL = 9                # 8 px de glifo + 1 px de separación
FONT_PNG = "font.png"
FONT_SEP = 0x55              # gris de las separaciones (se ignora al reinsertar)

FONT_NATIVE_ENTRY = (0x0010, 0x08DFE8, 2912)   # (metodo, src, tamano) del recurso en la ROM oficial
FONT_NATIVE_STREAM = 732                        # bytes que consume la rutina en ese flujo
FONT_NATIVE_CRC = 0x7DD98A6F                    # crc32 de esos 732 bytes
# Glifos ya decodificados (2912 bytes, zlib+base64): resultado verificado de ejecutar la
# rutina $2578 sobre el flujo oficial. Solo se usa si el recurso coincide exactamente.
FONT_NATIVE_DATA = (
    "eNqVVomRwCAIpAP775IO9lREXu9yyTgaEeRdQvThGRyH7l2yvT37YMxHz+haqJgHwGuaswgGZF8f0Nxb5yH3rrXy"
    "L571PTYNk5fPN1r92wfKfwZkT9n1U+nnuLdv6bzsWnP1A8tYuun6i7+RtgGm/8QrKOD9l1Q4Ok/38ThRIiDKQ8oB"
    "T782m3yvq6wPjUBFvjAcObDzjl/Cgptt9X6h3zwEkt+S/aj204Pf0U1ODkWujfGBDrU9uMctQuzDHOQGJi/sER9f"
    "v8vvizZjb0OT3sfffCPxGD6+dPb9mSa/1PQcH5a4XxTB3uvibyUa86vQY367u1HzI9mVsWzflTAw1mIk9vLFJm/r"
    "C16LfQvR9rtwkzEE4RDk4+i/bYjxCbHr6yPErfFf4j+Y++RPGHhkEmDW5vrsnND0l1b/jhb46fiMxYfrzf5TPo8B"
    "Hb3Tz+MbUvy2TGoGYntAqWXj7wRcfrYeyPStP+R+8ug3sUXe3syGhSl/X/XvMVpdF+g3J3wMufJrjWb+kz85jyhj"
    "gJdtOrb6c0wgvabtfwXYY4477Gnrv/TWIl9rHAEDcn8odUDvGi7y/8aA4j9/YhSMp8b/lkcj/V8UDEgNtqnxJz3X"
    "v2GA1P/9R6T6D+d73S/yd7HkHtX9//wAJ2NJSw=="
)

# Gráfico de "Pause": recurso de gráficos 10 (39 tiles de 8x8 y 4bpp). Contiene la palabra
# "Pause" en los tiles 34-38 (P, a, u, s, e) y otro gráfico en los tiles 32-33.
PAUSE_RES = 10
PAUSE_TILES = 39
PAUSE_COLS = 16               # tiles por fila en pause.png
PAUSE_CELL = 9                # 8 px de tile + 1 px de separación
PAUSE_PNG = "pause.png"
PAUSE_SEP = 0x55              # gris de las separaciones (se ignora al reinsertar)

PAUSE_NATIVE_ENTRY = (0x0010, 0x08F098, 1248)   # (metodo, src, tamano) del recurso en la ROM oficial
PAUSE_NATIVE_STREAM = 428                        # bytes que consume la rutina en ese flujo
PAUSE_NATIVE_CRC = 0xD146BB8B                    # crc32 de esos 428 bytes
# Tiles ya decodificados (1248 bytes, zlib+base64): resultado verificado de ejecutar la
# rutina $2578 sobre el flujo oficial. Solo se usa si el recurso coincide exactamente.
PAUSE_NATIVE_DATA = (
    "eNqNUzFyxDAIpL7o/3VqyAuECtWBR2UXyRfbd5kJ9hobFoEwkpzSfEh0n6E2qfktsJdkwg9ftxGqC3injb4iZEQb7i16TzeD0nTV"
    "pc1op588WUFPYRamGkjp8NiYghIumvaxS5pyl4YCExs414DcsWvY+lkDeMVnHHMDA48I5EGSjmSKpOoxz5p2+skj/7SJtmsIybHq"
    "yIE6QqGAfoIr7fRXHeQzbtXS5I2wW4mHO57gu2MBG0PV8CsMWk+wZbfFW3zG5a3r72Ue/+Poy3zF4Tu4/5Rcg8QexcC+jx45RqKv"
    "PrmdoLTTX70Cv+KqV3mUsPuTkxsMbHRkOrVDuqqrd3M1TKHiVjvAb9rpJ49yjt8y7zPKzI6XRCMGhsCjMNHuF9BOP3lZM7yOy8sM"
    "8/x1bE2/SkvO+3RL2JRvnaVb/rvnjZFQfc8W8bGRfw1AAzDiwlJ0oxvP4sBZBOXNlD5U5fG5r3qXwkVgL6tq8agva3xer7t/xf2u"
    "8yh9XX/nP/FEfgC2C+Po"
)

# Tablas de punteros conocidas (inicio, número de entradas)
POINTER_TABLES = {
    "stage_names": (0x970A, 24),
    "dev_stages": (0xE1FA, 19),
}

# --------------------------------------------------------------------------------------
# Tabla de codificación
# --------------------------------------------------------------------------------------


def load_tbl(path):
    """Carga una tabla .tbl con el formato  HH=texto  y devuelve {byte: texto}."""
    table = {}
    with open(path, "r", encoding="utf-8") as fh:
        for lineno, line in enumerate(fh, 1):
            line = line.rstrip("\n").rstrip("\r")
            if not line or line.startswith(";"):
                continue
            if "=" not in line:
                raise ValueError("%s:%d: línea sin '='" % (path, lineno))
            left, right = line.split("=", 1)
            key = left.strip()
            try:
                byte = int(key, 16)
            except ValueError:
                raise ValueError("%s:%d: byte inválido %r" % (path, lineno, key))
            if not 0 <= byte <= 0xFF:
                raise ValueError("%s:%d: byte fuera de rango" % (path, lineno))
            table[byte] = right
    return table


def encode_text(data, table):
    """Convierte bytes a texto usando la tabla; los bytes desconocidos salen como [HH]."""
    out = []
    for b in data:
        if b in table:
            out.append(table[b])
        else:
            out.append("[%02X]" % b)
    return "".join(out)


# --------------------------------------------------------------------------------------
# Lector de la ROM
# --------------------------------------------------------------------------------------


class Rom(object):
    def __init__(self, data):
        self.data = data

    def u32(self, addr):
        return struct.unpack(">I", self.data[addr:addr + 4])[0]

    def u16(self, addr):
        return struct.unpack(">H", self.data[addr:addr + 2])[0]

    def cstring(self, addr):
        end = self.data.index(b"\x00", addr)
        return self.data[addr:end]

    def find_long_refs(self, value):
        """Busca todos los sitios donde aparece `value` como long big-endian."""
        return [m.start() for m in re.finditer(re.escape(struct.pack(">I", value)), self.data)]

    def in_pointer_table(self, offset):
        for _name, (base, count) in POINTER_TABLES.items():
            if base <= offset < base + 4 * count and (offset - base) % 4 == 0:
                return True
        return False

    def classify_ref(self, offset):
        """Devuelve 'imm32' si el long es el operando de lea/move(a), 'ptr_table' si está en tabla."""
        prev = self.data[offset - 2:offset]
        # movea.l #imm,An / move.l #imm,Dn  (0x207C.. / 0x203C..)  y lea.l #imm,An (0x41F9)
        if prev[0] == 0x41 and prev[1] == 0xF9:
            return "imm32"
        if (prev[0] & 0xF0) == 0x20 and prev[1] in (0x3C, 0x7C):
            return "imm32"
        if self.in_pointer_table(offset):
            return "ptr_table"
        return "unknown"


# --------------------------------------------------------------------------------------
# Descompresor del juego (ver tr_plan.md, apartado 1.1)
# --------------------------------------------------------------------------------------


def decompress(src, maxout=0x40000):
    out = bytearray()
    p = 0
    while len(out) < maxout:
        c = src[p]
        p += 1
        n = c & 0x1F
        top = c & 0xE0
        if n == 0:
            n = src[p]
            p += 1
            if n == 0 and top == 0x00:
                return bytes(out)
        if top == 0x00:
            out += src[p:p + n]
            p += n
        elif top == 0x20:
            out += bytes([src[p]]) * n
            p += 1
        elif top == 0x40:
            out += src[p:p + 2] * n
            p += 2
        elif top == 0x60:
            out += src[p:p + 3] * n
            p += 3
        elif top in (0x80, 0xA0):
            hi, lo = out[-2], out[-1]
            if top == 0x80:
                hi -= n
                if hi < 0:
                    hi &= 0xFF
                    lo = (lo - 1) & 0xFF
            else:
                hi += n
                if hi > 0xFF:
                    hi &= 0xFF
                    lo = (lo + 1) & 0xFF
            out += bytes([hi, lo])
        elif top == 0xC0:
            dist = src[p]
            p += 1
            for _ in range(n):
                out.append(out[-dist])
        else:
            dist = src[p] | (src[p + 1] << 8)
            p += 2
            for _ in range(n):
                out.append(out[-dist])
    raise RuntimeError("descompresión sin terminador")


# --------------------------------------------------------------------------------------
# Especificación de bloques
# --------------------------------------------------------------------------------------

# Bloques ASCII simples: cada entrada es la dirección de una cadena terminada en 0x00.
ASCII_BLOCKS = [
    ("title", "Cartel del título (menú principal).", [
        0x177F8, 0x17804, 0x17810, 0x1781C, 0x17824]),
    ("press_start", "Aviso 'PRESS START' de la pantalla del título.", [0x17F72]),
    ("hud", "Etiqueta de jugador del HUD.", [0xA0E6, 0xA0EE, 0xA0F0]),
    ("game_over", "Pantalla de fin de partida / continuar.", [0xA370, 0xA37C, 0xA386, 0xA392]),
    ("level_end", "Aviso de fin de nivel.", [0xA432]),
    ("ready", "Aviso de comienzo de fase.", [0x96FE]),
    ("config_menu", "Menú de configuración del juego.", [
        0x14E46, 0x14E60, 0x14E6C, 0x14E74, 0x14E7C, 0x14E84, 0x14E8C, 0x14E96, 0x14E9C,
        0x14EA6, 0x14EB2, 0x14EBE, 0x14EC2, 0x14EC6, 0x14ECA, 0x14ED4, 0x14EDE, 0x14EE8,
        0x14EF6]),
    ("dev_level", "Menú de depuración de selección de fase.", [0xE1EE]),
    ("dev_debug", "Texto de depuración (coordenadas/tipo).", [0x15276, 0x1529D]),
]

# Bloques comprimidos.  "structure" describe cómo se vuelve a montar el texto descomprimido.
LZ_BLOCKS = [
    {
        "name": "bios",
        "note": "Fichas ('Dino Files') de Archi, Lorenzo y Reese.",
        "source": 0x160A2,
        "source_length": 0x83B,
        "abs32_sites": [0x15D34],
        "pc_lea_sites": [],
        "alloc_sites": [0x15D1C],
        "alloc_size": 0xD48,
        "kind": "sections",
        "prefix_len": 6,
        "section_values": [0x3C1, 0x812],
        "section_pointer_sites": [0x15D5A, 0x15D62],
        "decompressed_size": 0xC2C,
        # se guarda sin comprimir en la ROM; el juego lo copia con el metodo 4 de $227E
        "raw": True,
        # (inmediato de `move.w #,d0`, inmediato de `move.w #,d1`)
        "copy_calls": [(0x15D3A, 0x15D3E)],
    },
    {
        "name": "story",
        "note": "Guion de la intro y avisos entre fases (6 escenas).",
        "source": 0x17F7E,
        "source_length": 0x570,
        "abs32_sites": [0x17DA4],
        "pc_lea_sites": [],
        "alloc_sites": [0x17D8C],
        "alloc_size": 0x6D2,
        "kind": "scenes",
        "scene_offsets": [0x000, 0x092, 0x1EE, 0x38A, 0x4F8, 0x67A],
        "decompressed_size": 0x6D2,
        # se guarda sin comprimir en la ROM; el juego lo copia con el metodo 4 de $227E
        "raw": True,
        "copy_calls": [(0x17DAA, 0x17DAE)],
        # escena -> sitio del inmediato addi.l que la selecciona (None = offset 0, sin parcheo)
        "scene_pointer_sites": {1: 0x17E4E, 2: 0x17E60, 3: 0x17E72, 4: 0x17E86, 5: 0x17E3C},
    },
    {
        "name": "credits",
        "note": "Créditos finales (dos pantallas usan el mismo texto).",
        "source": 0x25DD8,
        "source_length": 0x46F,
        "abs32_sites": [0x25AA2],
        "pc_lea_sites": [0x27A4A],
        "alloc_sites": [0x25A8A, 0x27A34],
        "alloc_size": 0x550,
        "kind": "lines",
        "decompressed_size": 0x550,
        # se guarda sin comprimir en la ROM; el juego lo copia con el metodo 4 de $227E
        "raw": True,
        # el segundo cargador usa `lea d16(pc),a0`: ahi el metodo lo pone insert_all.py
        # al reescribirlo como `lea <abs>.l,a0; moveq #4,d0`
        "copy_calls": [(0x25AA8, 0x25AAC), (None, 0x27A54)],
    },
]


# --------------------------------------------------------------------------------------
# Extracción de bloques ASCII
# --------------------------------------------------------------------------------------


def extract_ascii_block(rom, name, note, addresses, table):
    messages = {}
    for index, addr in enumerate(addresses):
        raw = rom.cstring(addr)
        sites = []
        for off in rom.find_long_refs(addr):
            sites.append({"site": off, "kind": rom.classify_ref(off)})
        if not sites:
            raise RuntimeError("bloque %s: la cadena %#x no tiene referencias" % (name, addr))
        unknown = [s for s in sites if s["kind"] == "unknown"]
        messages[str(index)] = {
            "text_offset": "0x%X" % addr,
            "pointer_offset": "0x%X" % sites[0]["site"],
            "pointer_offsets": ["0x%X" % s["site"] for s in sites if s["kind"] != "unknown"],
            "original": encode_text(raw, table),
            "translated": encode_text(raw, table),
        }
    return {
        "text_address": "0x%X" % addresses[0],
        "pointer_address": messages["0"]["pointer_offset"],
        "method": "ascii_z",
        "note": note,
        "messages": messages,
    }


def extract_ascii_table_block(rom, name, note, base, count, table):
    messages = {}
    first = None
    for index in range(count):
        entry = base + 4 * index
        addr = rom.u32(entry)
        if addr == 0:
            continue
        if first is None:
            first = addr
        raw = rom.cstring(addr)
        sites = [{"site": off, "kind": rom.classify_ref(off)} for off in rom.find_long_refs(addr)]
        messages[str(index)] = {
            "text_offset": "0x%X" % addr,
            "pointer_offset": "0x%X" % entry,
            "pointer_offsets": ["0x%X" % entry],
            "original": encode_text(raw, table),
            "translated": encode_text(raw, table),
        }
    return {
        "text_address": "0x%X" % first,
        "pointer_address": "0x%X" % base,
        "method": "ascii_z_table",
        "note": note,
        "table_address": "0x%X" % base,
        "table_entries": count,
        "messages": messages,
    }


# --------------------------------------------------------------------------------------
# Extracción de bloques comprimidos
# --------------------------------------------------------------------------------------


def split_sections(blob, starts, prefix_len):
    """Parte el texto descomprimido en [prefix] + secciones separadas por 0xFF.

    El 0xFF (fin de sección) queda al principio del separador, nunca dentro del mensaje.
    """
    chunks = []
    gaps = []
    prefix = blob[:prefix_len]
    for i, start in enumerate(starts):
        end = starts[i + 1] if i + 1 < len(starts) else len(blob)
        ff = blob.index(0xFF, start)
        chunks.append(blob[start:ff])
        gaps.append(blob[ff:end])
    return prefix, chunks, gaps


def extract_lz_block(rom, spec, table):
    if "raw_blob" in spec:
        # bloque guardado sin comprimir en la ROM (ver raw en LZ_BLOCKS)
        blob = spec["raw_blob"]
    else:
        compressed = rom.data[spec["source"]:]
        blob = decompress(compressed)
    if len(blob) != spec["decompressed_size"]:
        raise RuntimeError("bloque %s: tamaño descomprimido %#x != esperado %#x"
                           % (spec["name"], len(blob), spec["decompressed_size"]))

    structure = {}
    raw_messages = []

    if spec["kind"] == "sections":
        # `starts` son los offsets REALES de cada ficha dentro del bufer descomprimido
        starts = [spec["prefix_len"]] + spec["section_values"]
        prefix, chunks, gaps = split_sections(blob, starts, spec["prefix_len"])
        # la última sección acaba en el fin del búfer
        ff = blob.index(0xFF, starts[-1])
        chunks[-1] = blob[starts[-1]:ff]
        gaps[-1] = blob[ff:]
        structure["prefix"] = encode_text(prefix, table)
        structure["prefix_raw"] = [b for b in prefix]
        structure["between"] = [encode_text(g, table) for g in gaps[:-1]]
        structure["suffix"] = encode_text(gaps[-1], table)
        raw_messages = chunks
        structure["separators_raw"] = [[b for b in gaps[i]] for i in range(len(gaps) - 1)]
        structure["suffix_raw"] = [b for b in gaps[-1]]

    elif spec["kind"] == "scenes":
        # el texto de cada escena empieza tras su cabecera de 4 bytes
        starts = [off + 4 for off in spec["scene_offsets"]]
        headers = []
        gaps = []
        for i, off in enumerate(spec["scene_offsets"]):
            end = spec["scene_offsets"][i + 1] if i + 1 < len(spec["scene_offsets"]) else len(blob)
            header = blob[off:off + 4]
            ff = blob.index(0xFF, off + 4)
            headers.append(header)
            raw_messages.append(blob[off + 4:ff])
            gaps.append(blob[ff:end])
        structure["scene_headers"] = [[b for b in h] for h in headers]
        structure["scene_gaps"] = [[b for b in g] for g in gaps]
        structure["scene_pointer_sites"] = {str(k): "0x%X" % v
                                            for k, v in spec["scene_pointer_sites"].items()}

    elif spec["kind"] == "lines":
        starts = [0]
        ff = blob.rindex(0xFF)
        raw_messages = [blob[:ff]]
        structure["suffix_raw"] = [b for b in blob[ff:]]
    else:
        raise ValueError(spec["kind"])

    messages = {}
    for index, raw in enumerate(raw_messages):
        messages[str(index)] = {
            # offset del texto dentro del bufer descomprimido (lo que el juego suma
            # al puntero base; NO es una direccion de la ROM)
            "text_offset": "0x%X" % starts[index],
            "pointer_offset": "0x%X" % spec["abs32_sites"][0],
            "original": encode_text(raw, table),
            "translated": encode_text(raw, table),
        }

    block = {
        "text_address": "0x%X" % spec["source"],
        "pointer_address": "0x%X" % spec["abs32_sites"][0],
        "method": "lz_" + spec["kind"],
        "note": spec["note"],
        "source_offset": "0x%X" % spec["source"],
        "source_length": "0x%X" % spec["source_length"],
        "abs32_sites": ["0x%X" % s for s in spec["abs32_sites"]],
        "pc_lea_sites": ["0x%X" % s for s in spec["pc_lea_sites"]],
        "alloc_sites": ["0x%X" % s for s in spec["alloc_sites"]],
        "alloc_size": "0x%X" % spec["alloc_size"],
        "decompressed_size": "0x%X" % spec["decompressed_size"],
        "structure": structure,
        "messages": messages,
    }
    if "section_pointer_sites" in spec:
        block["section_pointer_sites"] = ["0x%X" % s for s in spec["section_pointer_sites"]]
    if spec.get("raw"):
        # el bloque se guarda sin comprimir en la ROM y el juego lo copia a RAM
        block["raw"] = True
        block["copy_calls"] = [["0x%X" % m if m is not None else None, "0x%X" % l]
                               for m, l in spec["copy_calls"]]
    return block, blob


# --------------------------------------------------------------------------------------
# Fuente principal
# --------------------------------------------------------------------------------------


def read_resource(rom, rid):
    """Devuelve (método, dirección, tamaño) del recurso `rid`."""
    off = RES_TABLE + 8 * rid
    return struct.unpack(">HIH", rom.data[off:off + 8])


def font_bytes(rom):
    """Glifos de la fuente principal como 32 bytes de VRAM (4bpp) por glifo."""
    method, src, size = read_resource(rom, FONT_RES)
    if method == 0x04:                       # datos crudos en la ROM
        return rom.data[src:src + size]
    if (method, src, size) == FONT_NATIVE_ENTRY:
        stream = rom.data[src:src + FONT_NATIVE_STREAM]
        if zlib.crc32(stream) & 0xFFFFFFFF == FONT_NATIVE_CRC:
            print("  %-12s códec propietario; se usan los glifos ya decodificados del flujo "
                  "oficial" % "fuente")
            return zlib.decompress(base64.b64decode(FONT_NATIVE_DATA))
    raise RuntimeError(
        "recurso %d comprimido (método %#06x): el juego usa un códec propio que "
        "extract_all.py no decodifica" % (FONT_RES, method))


def write_png_gray(path, width, height, pixels):
    """PNG en escala de grises de 8 bits (sin dependencias externas)."""
    raw = bytearray()
    for y in range(height):
        raw.append(0)                        # filtro "None"
        raw += pixels[y * width:(y + 1) * width]

    def chunk(tag, data):
        return (struct.pack(">I", len(data)) + tag + data
                + struct.pack(">I", zlib.crc32(tag + data) & 0xFFFFFFFF))

    png = b"\x89PNG\r\n\x1a\n"
    png += chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 0, 0, 0, 0))
    png += chunk(b"IDAT", zlib.compress(bytes(raw), 9))
    png += chunk(b"IEND", b"")
    with open(path, "wb") as fh:
        fh.write(png)


def extract_font(rom):
    """Escribe font.png a resolución 1:1 (un píxel de imagen por píxel de glifo)."""
    data = font_bytes(rom)
    tiles = len(data) // 32
    if tiles != FONT_TILES:
        raise RuntimeError("la fuente tiene %d glifos, se esperaban %d" % (tiles, FONT_TILES))
    cols = FONT_COLS
    rows = (tiles + cols - 1) // cols
    width = cols * FONT_CELL - 1
    height = rows * FONT_CELL - 1
    pixels = bytearray([FONT_SEP]) * (width * height)
    for tile in range(tiles):
        gx = (tile % cols) * FONT_CELL
        gy = (tile // cols) * FONT_CELL
        for r in range(8):
            for k in range(4):
                byte = data[tile * 32 + r * 4 + k]
                for half, value in enumerate((byte >> 4, byte & 15)):
                    pixels[(gy + r) * width + gx + 2 * k + half] = value * 17
    write_png_gray(FONT_PNG, width, height, pixels)
    print("  %-12s %3d glifos (0x%02x-0x%02x) -> %s (%dx%d)"
          % ("fuente", tiles, FONT_FIRST, FONT_FIRST + tiles - 1, FONT_PNG, width, height))


def pause_bytes(rom):
    """Tiles del gráfico de Pause como 32 bytes de VRAM (4bpp) por tile."""
    method, src, size = read_resource(rom, PAUSE_RES)
    if method == 0x04:                       # datos crudos en la ROM
        return rom.data[src:src + size]
    if (method, src, size) == PAUSE_NATIVE_ENTRY:
        stream = rom.data[src:src + PAUSE_NATIVE_STREAM]
        if zlib.crc32(stream) & 0xFFFFFFFF == PAUSE_NATIVE_CRC:
            print("  %-12s códec propietario; se usa el gráfico ya decodificado del flujo "
                  "oficial" % "pausa")
            return zlib.decompress(base64.b64decode(PAUSE_NATIVE_DATA))
    raise RuntimeError(
        "recurso %d comprimido (método %#06x): el juego usa un códec propio que "
        "extract_all.py no decodifica" % (PAUSE_RES, method))


def extract_pause(rom):
    """Escribe pause.png a resolución 1:1 (un píxel de imagen por píxel de tile)."""
    data = pause_bytes(rom)
    tiles = len(data) // 32
    if tiles != PAUSE_TILES:
        raise RuntimeError("el gráfico de pausa tiene %d tiles, se esperaban %d"
                           % (tiles, PAUSE_TILES))
    cols = PAUSE_COLS
    rows = (tiles + cols - 1) // cols
    width = cols * PAUSE_CELL - 1
    height = rows * PAUSE_CELL - 1
    pixels = bytearray([PAUSE_SEP]) * (width * height)
    for tile in range(tiles):
        gx = (tile % cols) * PAUSE_CELL
        gy = (tile // cols) * PAUSE_CELL
        for r in range(8):
            for k in range(4):
                byte = data[tile * 32 + r * 4 + k]
                for half, value in enumerate((byte >> 4, byte & 15)):
                    pixels[(gy + r) * width + gx + 2 * k + half] = value * 17
    write_png_gray(PAUSE_PNG, width, height, pixels)
    print("  %-12s %3d tiles -> %s (%dx%d)"
          % ("pausa", tiles, PAUSE_PNG, width, height))


# --------------------------------------------------------------------------------------
# Main
# --------------------------------------------------------------------------------------


def main():
    font_only = "--font-only" in sys.argv[1:]
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    rom_path = args[0] if args else DEFAULT_ROM
    here = os.path.dirname(os.path.abspath(__file__))
    os.chdir(here)

    if not os.path.exists(rom_path):
        raise SystemExit("No se encuentra la ROM: %s" % rom_path)
    if not os.path.exists(EXTRACT_TBL):
        raise SystemExit("No se encuentra la tabla: %s" % EXTRACT_TBL)

    table = load_tbl(EXTRACT_TBL)
    rom = Rom(open(rom_path, "rb").read())
    print("ROM: %s (%d bytes)" % (rom_path, len(rom.data)))

    if font_only:
        try:
            extract_font(rom)
        except RuntimeError as exc:
            raise SystemExit("No se puede extraer la fuente: %s" % exc)
        try:
            extract_pause(rom)
        except RuntimeError as exc:
            print("  %-12s AVISO: %s" % ("pausa", exc))
        return

    blocks = {}

    for name, note, addrs in ASCII_BLOCKS:
        block = extract_ascii_block(rom, name, note, addrs, table)
        blocks[name] = block
        refs = sum(len(m["pointer_offsets"]) for m in block["messages"].values())
        print("  %-12s %3d cadenas, %3d referencias" % (name, len(block["messages"]), refs))

    for name, (base, count) in POINTER_TABLES.items():
        if name in blocks:
            continue
        note = {
            "stage_names": "Nombres de fase mostrados en el juego (tabla de punteros de $970A).",
            "dev_stages": ("Lista de fases del menú de depuración. Cada entrada ocupa una ranura "
                           "fija de 20 bytes: la traducción debe caber en 18 caracteres."),
        }.get(name, "")
        block = extract_ascii_table_block(rom, name, note, base, count, table)
        blocks[name] = block
        print("  %-12s %3d cadenas (tabla en %#x)" % (name, len(block["messages"]), base))

    for spec in LZ_BLOCKS:
        block, blob = extract_lz_block(rom, spec, table)
        blocks[spec["name"]] = block
        print("  %-12s %3d mensajes, %d bytes descomprimidos"
              % (spec["name"], len(block["messages"]), len(blob)))

    try:
        extract_font(rom)
    except RuntimeError as exc:
        print("  %-12s AVISO: %s" % ("fuente", exc))
        hint = ("se conserva el %s incluido; para regenerarlo desde la ROM traducida ejecuta "
                "\"python extract_all.py --font-only TR_...\"" % FONT_PNG)
        if not os.path.exists(FONT_PNG):
            hint = ("ejecuta insert_all.py (deja la fuente sin comprimir) y luego "
                    "\"python extract_all.py --font-only\"")
        print("               " + hint)

    try:
        extract_pause(rom)
    except RuntimeError as exc:
        print("  %-12s AVISO: %s" % ("pausa", exc))
        hint = ("se conserva el %s incluido; para regenerarlo desde la ROM traducida ejecuta "
                "\"python extract_all.py --font-only TR_...\"" % PAUSE_PNG)
        if not os.path.exists(PAUSE_PNG):
            hint = ("ejecuta insert_all.py (deja el gráfico sin comprimir) y luego "
                    "\"python extract_all.py --font-only\"")
        print("               " + hint)

    doc = {
        "schema": 1,
        "comment": ("Textos extraidos de Tom Mason's Dinosaurs for Hire (USA). "
                    "Marcas: <nl> = salto de linea (0x00), <c1>..<c4> = color de linea, "
                    "[HH] = byte literal. Los bloques 'lz_*' se recomprimen al insertar."),
        "rom": rom_path,
        "insert_table": "main_insert.tbl",
        "blocks": blocks,
    }

    with open(OUT_JSON, "w", encoding="utf-8") as fh:
        json.dump(doc, fh, ensure_ascii=False, indent=2)
        fh.write("\n")
    print("Escrito %s" % OUT_JSON)


if __name__ == "__main__":
    main()
