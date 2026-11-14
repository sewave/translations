#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
insert_all.py - Inserta las traducciones de texts_translated.json en la ROM base.

Uso:
    python insert_all.py [rom_base] [json_traducido]

Salida:
    TR_<nombre original de la ROM>

Requisitos:
    * La ROM base no se modifica nunca.
    * Si existe font_mod.png (misma geometria que font.png) se inserta como fuente principal,
      sin comprimir y recolocada; si no existe, la fuente se deja como esta.
    * Si existe pause_mod.png (misma geometria que pause.png) se inserta como el grafico de Pause
      (recurso 10) sin comprimir y recolocado; si no existe, se deja como esta.
    * La tabla de insercion (main_insert.tbl) es la unica que decide como se codifica cada
      caracter; los codigos [HH] insertan ese byte concreto.
    * Los textos se colocan en una zona nueva (la ROM se amplia a 2 MB) y se parchean todas
      las referencias: inmediatos de 32 bits, tablas de punteros, el 'lea d16(pc)' de los
      creditos, los desplazamientos de seccion/escena y los tamanos de buffer de RAM.
    * Se recalcula el checksum de la cabecera.
"""

from __future__ import division

import json
import os
import re
import struct
import sys
import zlib

DEFAULT_ROM = "Tom Mason's Dinosaurs for Hire (USA).md"
DEFAULT_JSON = "texts_translated.json"
INSERT_TBL = "main_insert.tbl"

# Fuente principal (recurso 1): 91 glifos de 8x8 y 4bpp, caracteres 0x20-0x7A.
RES_TABLE = 0x617F0             # tabla de recursos: {método:word, src:long, tamaño:word}
FONT_RES = 1
FONT_TILES = 91
FONT_COLS = 16                  # glifos por fila en font.png / font_mod.png
FONT_CELL = 9                   # 8 px de glifo + 1 px de separación
FONT_MOD = "font_mod.png"
FONT_METHOD_RAW = 0x0004        # copia directa a VRAM (DMA), sin códec

# Gráfico de "Pause" (recurso 10): 39 tiles de 8x8 y 4bpp (palabra "Pause" en los tiles 34-38).
PAUSE_RES = 10
PAUSE_TILES = 39
PAUSE_COLS = 16                 # tiles por fila en pause.png / pause_mod.png
PAUSE_CELL = 9                  # 8 px de tile + 1 px de separación
PAUSE_MOD = "pause_mod.png"

# $227E es el cargador generico: d0 elige el metodo y d1 el tamano.
# metodo 4 = copia literal de d1 bytes desde a0 a a1 (sin descompresor).
METHOD_COPY = 0x0004

ROM_HEADER_END = 0x1A4          # campo "fin de ROM" de la cabecera
ROM_HEADER_CHECKSUM = 0x18E     # checksum
NEW_ROM_SIZE = 0x200000         # 2 MB
NEW_AREA = 0x100000             # donde se colocan los textos nuevos

HEX = "0123456789ABCDEFabcdef"


# --------------------------------------------------------------------------------------
# Tabla de insercion
# --------------------------------------------------------------------------------------


def load_insert_tbl(path):
    """Devuelve {texto: byte}.  Varias lineas pueden compartir el mismo byte."""
    rev = {}
    with open(path, "r", encoding="utf-8") as fh:
        for lineno, line in enumerate(fh, 1):
            line = line.rstrip("\n").rstrip("\r")
            if not line or line.startswith(";"):
                continue
            if "=" not in line:
                raise ValueError("%s:%d: línea sin '='" % (path, lineno))
            left, right = line.split("=", 1)
            try:
                byte = int(left.strip(), 16)
            except ValueError:
                raise ValueError("%s:%d: byte inválido %r" % (path, lineno, left))
            if right == "":
                raise ValueError("%s:%d: texto vacío" % (path, lineno))
            rev[right] = byte
    return rev


class Decoder(object):
    """Traduce texto del JSON a bytes usando SOLO la tabla de inserción (+ los códigos [HH])."""

    def __init__(self, rev):
        self.rev = rev
        by_first = {}
        for text, byte in rev.items():
            by_first.setdefault(text[0], []).append((text, byte))
        for key in by_first:
            by_first[key].sort(key=lambda p: -len(p[0]))
        self.by_first = by_first

    def decode(self, text):
        out = bytearray()
        i = 0
        n = len(text)
        while i < n:
            if text[i] == "[" and i + 3 < n and text[i + 3] == "]" \
                    and text[i + 1] in HEX and text[i + 2] in HEX:
                out.append(int(text[i + 1:i + 3], 16))
                i += 4
                continue
            matched = False
            for token, byte in self.by_first.get(text[i], ()):
                if text.startswith(token, i):
                    out.append(byte)
                    i += len(token)
                    matched = True
                    break
            if not matched:
                raise ValueError("carácter no presente en la tabla de inserción: %r (en %r)"
                                 % (text[i], text[max(0, i - 12):i + 12]))
        return bytes(out)


# --------------------------------------------------------------------------------------
# Compresor / descompresor del juego
# --------------------------------------------------------------------------------------


def decompress(src, maxout=0x40000):
    """Descompresor de referencia (mismo comportamiento que la rutina $29B4)."""
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


MAX_MATCH = 255


def _emit_literals(out, literals):
    pending = bytearray(literals)
    while pending:
        k = min(len(pending), MAX_MATCH)
        if k <= 31:
            out.append(k)
        else:
            out.append(0x00)
            out.append(k)
        out += pending[:k]
        del pending[:k]


def compress(data, window=0xFFFF):
    """Comprime con el formato del juego (literales + backrefs de 1 o 2 bytes de distancia)."""
    out = bytearray()
    literals = bytearray()
    table = {}
    pos = 0
    n = len(data)

    while pos < n:
        best_len = 0
        best_dist = 0
        if pos + 3 <= n:
            key = bytes(data[pos:pos + 3])
            candidates = table.get(key)
            if candidates:
                for cand in reversed(candidates):
                    dist = pos - cand
                    if dist > window:
                        break
                    length = 0
                    while length < MAX_MATCH and pos + length < n \
                            and data[cand + length] == data[pos + length]:
                        length += 1
                    if length > best_len:
                        best_len = length
                        best_dist = dist
                        if length == MAX_MATCH:
                            break
        if best_len >= 3:
            _emit_literals(out, literals)
            literals = bytearray()
            if best_dist <= 0xFF:
                if best_len <= 31:
                    out.append(0xC0 | best_len)
                else:
                    out.append(0xC0)
                    out.append(best_len)
                out.append(best_dist)
            else:
                if best_len <= 31:
                    out.append(0xE0 | best_len)
                else:
                    out.append(0xE0)
                    out.append(best_len)
                out += bytes([best_dist & 0xFF, best_dist >> 8])
            for k in range(best_len):
                if pos + 3 <= n:
                    key = bytes(data[pos:pos + 3])
                    table.setdefault(key, []).append(pos)
                pos += 1
        else:
            literals.append(data[pos])
            if pos + 3 <= n:
                key = bytes(data[pos:pos + 3])
                table.setdefault(key, []).append(pos)
            pos += 1

    _emit_literals(out, literals)
    out.append(0x00)
    out.append(0x00)
    return bytes(out)


# --------------------------------------------------------------------------------------
# Reconstrucción de los bloques comprimidos
# --------------------------------------------------------------------------------------


def rebuild_lz(block, decoded):
    """Devuelve el texto descomprimido a partir de la estructura y los mensajes traducidos."""
    method = block["method"]
    structure = block["structure"]

    def raw(ints):
        return bytes(ints)

    if method == "lz_sections":
        blob = bytearray()
        blob += raw(structure.get("prefix_raw", []))
        offsets = []
        for index in range(len(decoded)):
            if index > 0:
                offsets.append(len(blob))
            blob += decoded[index]
            if index < len(structure.get("separators_raw", [])):
                blob += raw(structure["separators_raw"][index])
        blob += raw(structure.get("suffix_raw", []))
        return bytes(blob), offsets

    if method == "lz_scenes":
        blob = bytearray()
        offsets = []
        for index in range(len(decoded)):
            offsets.append(len(blob))
            blob += raw(structure["scene_headers"][index])
            blob += decoded[index]
            blob += raw(structure["scene_gaps"][index])
            if len(blob) & 1:
                # el 68000 lanza una excepcion al leer una palabra en direccion impar;
                # la impresora del juego empieza con `move.w (a0)+` en cada escena, asi
                # que todas las escenas tienen que empezar en direccion par.  El relleno
                # cae detras del 0xFF que termina la escena y no se imprime.
                blob.append(0x00)
        return bytes(blob), offsets

    if method == "lz_lines":
        blob = bytearray(decoded[0])
        blob += raw(structure.get("suffix_raw", []))
        return bytes(blob), None

    raise ValueError(method)


def check_layout(block, decoded, blob, offsets):
    """Comprueba que los offsets que se van a parchear apuntan exactamente al
    principio de cada texto dentro del bufer descomprimido (el juego los suma al
    puntero base). Si algo no cuadra, aborta el build en vez de escribir una ROM rota.
    """
    method = block["method"]
    structure = block["structure"]

    if method == "lz_scenes":
        # cada escena empieza por su cabecera de 4 bytes, que el juego lee y salta
        for index, off in enumerate(offsets):
            if off & 1:
                raise RuntimeError("escena %d: el offset %#x es impar y el 68000 no puede "
                                   "leer ahi la cabecera" % (index, off))
            header = bytes(structure["scene_headers"][index])
            if blob[off:off + len(header)] != header:
                raise RuntimeError("escena %d: el offset %#x no cae en su cabecera"
                                   % (index, off))
            text = decoded[index]
            if blob[off + len(header):off + len(header) + len(text)] != text:
                raise RuntimeError("escena %d: el texto del offset %#x no coincide"
                                   % (index, off))
        return offsets

    if method == "lz_sections":
        # las fichas no llevan cabecera: el offset apunta al primer byte del texto
        pos = len(structure.get("prefix_raw", []))
        for index, text in enumerate(decoded):
            if index == 0:
                off = pos
            else:
                off = offsets[index - 1]
                if off != pos:
                    raise RuntimeError("ficha %d: offset %#x != inicio esperado %#x"
                                       % (index, off, pos))
            if blob[off:off + len(text)] != text:
                raise RuntimeError("ficha %d: el texto del offset %#x no coincide" % (index, off))
            pos = off + len(text)
            if index < len(structure.get("separators_raw", [])):
                pos += len(structure["separators_raw"][index])
        return offsets

    return offsets


# --------------------------------------------------------------------------------------
# Parcheo
# --------------------------------------------------------------------------------------


def put_u32(rom, offset, value):
    rom[offset:offset + 4] = struct.pack(">I", value)


def put_u16(rom, offset, value):
    rom[offset:offset + 2] = struct.pack(">H", value & 0xFFFF)


def checksum(data):
    total = 0
    end = len(data)
    for i in range(0x200, end - 1, 2):
        total = (total + struct.unpack(">H", data[i:i + 2])[0]) & 0xFFFF
    return total


# --------------------------------------------------------------------------------------
# Fuente principal
# --------------------------------------------------------------------------------------


def png_read_gray(path):
    """Lee un PNG de 8 bits y devuelve (ancho, alto, grises). Sin dependencias externas."""
    data = open(path, "rb").read()
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        raise SystemExit("%s: no es un PNG" % path)
    pos, idat, palette = 8, bytearray(), None
    width = height = depth = colour = None
    while pos + 8 <= len(data):
        length = struct.unpack(">I", data[pos:pos + 4])[0]
        tag = data[pos + 4:pos + 8]
        chunk = data[pos + 8:pos + 8 + length]
        pos += 12 + length
        if tag == b"IHDR":
            width, height, depth, colour, _, _, interlace = struct.unpack(">IIBBBBB", chunk)
            if interlace:
                raise SystemExit("%s: PNG entrelazado no soportado" % path)
        elif tag == b"PLTE":
            palette = chunk
        elif tag == b"IDAT":
            idat += chunk
        elif tag == b"IEND":
            break
    if depth != 8 or colour not in (0, 2, 3, 4, 6):
        raise SystemExit("%s: se esperaba PNG de 8 bits en gris, RGB, paleta o con alfa" % path)
    channels = {0: 1, 2: 3, 3: 1, 4: 2, 6: 4}[colour]
    raw = zlib.decompress(bytes(idat))
    stride = width * channels
    prev = bytearray(stride)
    rawpos = 0
    pix = bytearray(width * height)
    for y in range(height):
        filt = raw[rawpos]
        rawpos += 1
        line = bytearray(raw[rawpos:rawpos + stride])
        rawpos += stride
        if filt == 1:
            for i in range(channels, stride):
                line[i] = (line[i] + line[i - channels]) & 0xFF
        elif filt == 2:
            for i in range(stride):
                line[i] = (line[i] + prev[i]) & 0xFF
        elif filt == 3:
            for i in range(stride):
                left = line[i - channels] if i >= channels else 0
                line[i] = (line[i] + ((left + prev[i]) >> 1)) & 0xFF
        elif filt == 4:
            for i in range(stride):
                a = line[i - channels] if i >= channels else 0
                b = prev[i]
                c = prev[i - channels] if i >= channels else 0
                pa, pb, pc = abs(b - c), abs(a - c), abs(a + b - 2 * c)
                pred = a if (pa <= pb and pa <= pc) else (b if pb <= pc else c)
                line[i] = (line[i] + pred) & 0xFF
        elif filt != 0:
            raise SystemExit("%s: filtro PNG %d no v\u00e1lido" % (path, filt))
        for x in range(width):
            i = x * channels
            if colour in (0, 4):
                value = line[i]
            elif colour == 3:
                index = line[i]
                if palette is None or index * 3 + 2 >= len(palette):
                    raise SystemExit("%s: paleta PNG incompleta" % path)
                r, g, b = palette[index * 3:index * 3 + 3]
                value = (r * 299 + g * 587 + b * 114) // 1000
            else:
                r, g, b = line[i], line[i + 1], line[i + 2]
                value = (r * 299 + g * 587 + b * 114) // 1000
            pix[y * width + x] = value
        prev = line
    return width, height, pix


def tiles_payload(path, tiles, cols, cell):
    """Convierte un PNG de tiles (celdas de 8x8 + separador) en 32 bytes de VRAM por tile."""
    width, height, pix = png_read_gray(path)
    rows = (tiles + cols - 1) // cols
    want = (cols * cell - 1, rows * cell - 1)
    if (width, height) != want:
        raise SystemExit("%s: se esperaba %dx%d (es %dx%d); no se reescala"
                         % (path, want[0], want[1], width, height))

    def level(value):
        return min(15, (value * 15 + 127) // 255)

    payload = bytearray()
    for tile in range(tiles):
        gx = (tile % cols) * cell
        gy = (tile // cols) * cell
        for r in range(8):
            for k in range(4):
                x = gx + 2 * k
                row = (gy + r) * width
                payload.append((level(pix[row + x]) << 4) | level(pix[row + x + 1]))
    return bytes(payload)


def font_payload(path):
    """Convierte font_mod.png en los 32 bytes de VRAM de cada glifo."""
    return tiles_payload(path, FONT_TILES, FONT_COLS, FONT_CELL)


# --------------------------------------------------------------------------------------
# Main
# --------------------------------------------------------------------------------------


def main():
    rom_path = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_ROM
    json_path = sys.argv[2] if len(sys.argv) > 2 else DEFAULT_JSON
    here = os.path.dirname(os.path.abspath(__file__))
    os.chdir(here)

    for path in (rom_path, json_path, INSERT_TBL):
        if not os.path.exists(path):
            raise SystemExit("No se encuentra: %s" % path)

    base = open(rom_path, "rb").read()
    doc = json.load(open(json_path, encoding="utf-8"))
    decoder = Decoder(load_insert_tbl(INSERT_TBL))

    rom = bytearray(base)
    if len(rom) < NEW_ROM_SIZE:
        rom += b"\x00" * (NEW_ROM_SIZE - len(rom))

    cursor = NEW_AREA
    report = []
    alloc_patches = []

    def place(payload, align=4):
        nonlocal cursor
        if cursor % align:
            cursor += align - (cursor % align)
        addr = cursor
        rom[addr:addr + len(payload)] = payload
        cursor += len(payload)
        return addr

    blocks = doc["blocks"]
    order = ["title", "press_start", "hud", "game_over", "level_end", "ready",
             "config_menu", "dev_level", "dev_debug", "stage_names", "dev_stages",
             "bios", "story", "credits"]

    for name in order:
        block = blocks.get(name)
        if block is None:
            continue
        method = block["method"]
        decoded = []
        for key in sorted(block["messages"], key=lambda k: int(k)):
            msg = block["messages"][key]
            decoded.append(decoder.decode(msg["translated"]))

        if method in ("ascii_z", "ascii_z_table"):
            pairs = []
            for index, payload in enumerate(decoded):
                addr = place(payload + b"\x00", align=2)
                pairs.append((index, addr))
            for index, addr in pairs:
                msg = block["messages"][str(index)]
                for site in msg["pointer_offsets"]:
                    put_u32(rom, int(site, 16), addr)
            report.append("%-12s %2d cadenas -> %#08x" % (name, len(decoded), pairs[0][1]))
            continue

        # bloque comprimido
        blob, offsets = rebuild_lz(block, decoded)
        check_layout(block, decoded, blob, offsets)

        if method == "lz_sections":
            for site, value in zip(block["section_pointer_sites"], offsets):
                put_u32(rom, int(site, 16), value)
            report.append("%-12s offsets de ficha %s" % (name, [hex(v) for v in offsets]))

        if method == "lz_scenes":
            for scene, site in block["structure"]["scene_pointer_sites"].items():
                put_u32(rom, int(site, 16), offsets[int(scene)])
            report.append("%-12s escenas: %s" % (
                name,
                ", ".join("%s@%s->%#x" % (scene, site, offsets[int(scene)])
                          for scene, site in sorted(block["structure"]["scene_pointer_sites"].items()))))

        if block.get("raw"):
            # El texto se guarda SIN comprimir en la ROM y el juego lo copia a RAM con
            # el modo 4 de $227E (copia literal), igual que antes descomprimia: no se
            # toca ni la reserva ni el flujo de la rutina, solo como llegan los bytes.
            addr = place(blob, align=2)
            if addr & 1:
                raise RuntimeError("bloque %s: el texto ha quedado en direccion impar %#x"
                                   % (name, addr))
            for site in block["abs32_sites"]:
                put_u32(rom, int(site, 16), addr)
            for site in block.get("pc_lea_sites", []):
                site = int(site, 16)
                rom[site:site + 2] = b"\x41\xf9"          # lea.l <texto>.l,a0
                put_u32(rom, site + 2, addr)
                rom[site + 6:site + 8] = b"\x70\x04"      # moveq #4,d0 (copia literal)
            for method_site, length_site in block.get("copy_calls", []):
                if method_site:
                    method_site = int(method_site, 16)
                    if base[method_site - 2:method_site] != b"\x30\x3c":
                        raise RuntimeError("%s: en %#x no hay `move.w #,d0`"
                                           % (name, method_site - 2))
                    put_u16(rom, method_site, METHOD_COPY)
                length_site = int(length_site, 16)
                if base[length_site - 2:length_site] != b"\x32\x3c":
                    raise RuntimeError("%s: en %#x no hay `move.w #,d1`"
                                       % (name, length_site - 2))
                put_u16(rom, length_site, len(blob))
            new_size = len(blob)
            for site in block["alloc_sites"]:
                site = int(site, 16)
                old = struct.unpack(">H", base[site:site + 2])[0]
                alloc_patches.append((site, old, new_size))
            report.append("%-12s %#6x -> %#6x bytes crudos @ %#08x (copia literal)"
                          % (name, int(block["source_length"], 16), len(blob), addr))
            continue

        # comprobar que el descompresor reproduce el texto exacto
        packed = compress(blob)
        back = decompress(packed)
        if back != blob:
            raise RuntimeError("bloque %s: la descompresión no reproduce el texto" % name)

        addr = place(packed, align=4)
        for site in block["abs32_sites"]:
            put_u32(rom, int(site, 16), addr)
        for site in block.get("pc_lea_sites", []):
            site = int(site, 16)
            rom[site:site + 2] = b"\x41\xf9"          # lea.l <addr>.l,a0
            put_u32(rom, site + 2, addr)
            rom[site + 6:site + 8] = b"\x70\x0c"      # moveq #$C,d0
        new_size = len(blob)
        for site in block["alloc_sites"]:
            site = int(site, 16)
            old = struct.unpack(">H", base[site:site + 2])[0]
            alloc_patches.append((site, old, new_size))
        report.append("%-12s %#6x -> %#6x bytes comprimidos @ %#08x (descomprimido %#x)"
                      % (name, int(block["source_length"], 16), len(packed), addr, new_size))

    # --- fuente principal: recolocar sin comprimir y repuntar el recurso --------
    if os.path.exists(FONT_MOD):
        payload = font_payload(FONT_MOD)
        addr = place(payload, align=4)
        off = RES_TABLE + 8 * FONT_RES
        old_method, old_src, old_size = struct.unpack(">HIH", rom[off:off + 8])
        put_u16(rom, off, FONT_METHOD_RAW)
        put_u32(rom, off + 2, addr)
        put_u16(rom, off + 6, len(payload))
        if rom[addr:addr + len(payload)] != payload or addr % 4:
            raise RuntimeError("la fuente no se escribió correctamente")
        report.append("%-12s %d glifos: recurso %d %#06x %#08x -> crudo @ %#08x"
                      % ("fuente", len(payload) // 32, FONT_RES, old_method, old_src, addr))

    # --- gráfico de Pause: recolocar sin comprimir y repuntar el recurso ---------
    if os.path.exists(PAUSE_MOD):
        payload = tiles_payload(PAUSE_MOD, PAUSE_TILES, PAUSE_COLS, PAUSE_CELL)
        addr = place(payload, align=4)
        off = RES_TABLE + 8 * PAUSE_RES
        old_method, old_src, old_size = struct.unpack(">HIH", rom[off:off + 8])
        put_u16(rom, off, METHOD_COPY)
        put_u32(rom, off + 2, addr)
        put_u16(rom, off + 6, len(payload))
        if rom[addr:addr + len(payload)] != payload or addr % 4:
            raise RuntimeError("el gráfico de Pause no se escribió correctamente")
        report.append("%-12s %d tiles: recurso %d %#06x %#08x -> crudo @ %#08x"
                      % ("pausa", len(payload) // 32, PAUSE_RES, old_method, old_src, addr))

    # tamaños de búfer de RAM: nunca menores que el texto descomprimido
    for site, old, new in alloc_patches:
        value = max(old, new)
        if value != old:
            put_u16(rom, site, value)

    # cabecera: fin de ROM y checksum
    put_u32(rom, ROM_HEADER_END, len(rom) - 1)
    put_u16(rom, ROM_HEADER_CHECKSUM, 0)
    put_u16(rom, ROM_HEADER_CHECKSUM, checksum(rom))

    out_name = "TR_" + os.path.basename(rom_path)
    with open(out_name, "wb") as fh:
        fh.write(rom)

    print("ROM base ....... %s (%#x bytes)" % (rom_path, len(base)))
    print("Traduccion ..... %s" % json_path)
    for line in report:
        print("  " + line)
    for site, old, new in alloc_patches:
        print("  búfer RAM @ %#08x: %#x -> %#x" % (site, old, max(old, new)))
    print("Zona nueva ..... %#08x - %#08x" % (NEW_AREA, cursor))
    print("Checksum ....... %#06x" % checksum(rom))
    print("Escrito %s (%#x bytes)" % (out_name, len(rom)))


if __name__ == "__main__":
    main()
