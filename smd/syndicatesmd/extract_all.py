#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
extract_all.py - Extrae los textos de 'Syndicate (USA, Europe) (En,Fr,De).md'
a texts.json usando story_extract.tbl.

Estructura del juego:
  - 4 tablas de punteros 32-bit big-endian hacia strings terminados en 0x00.
      T1 @0x1C7E2C (618 entradas): paises, objetivos, menus, equipamiento
      T2 @0x1C87E0 (39): textos de reclutamiento
      T3 @0x1C88D0 (204): menus in-game + paises (comparte direcciones con T1)
      T4 @0x1C7942 (82): nombres de agentes (algunas entradas no son texto)
  - Zona de texto: 0x26000-0x2A010.
  - Triples EN/FR/DE: indice = base*3 + idioma (0/1/2), idioma en RAM 0xA97E.
"""

import json
import os
import struct

BASE_ROM = "Syndicate (USA, Europe) (En,Fr,De).md"
OUT_JSON = "texts.json"
TBL = "story_extract.tbl"

TEXT_ZONE_START = 0x26000
TEXT_ZONE_END = 0x2A010  # el string mas largo llega hasta 0x2A00F

# Resumenes de mision: bloques comprimidos (LZSS), uno por idioma.
#   word BE en [0] = longitud comprimida; stream desde [2].
#   Se descomprime a RAM 0xFFFF5392; los primeros 100 bytes son un diccionario
#   y el resto son 100 cadenas null-terminated (titulo + texto de cada mision).
MISSION_DICT_SIZE = 100
MISSION_BUFFER_RAM = 0xFFFF5392
MISSION_POINTER_TABLE = 0x1537D4
MISSION_BLOCKS = [
    {"lang": "EN", "address": 0x1537E0, "compressed_length": 0x1EA5},
    {"lang": "FR", "address": 0x155688, "compressed_length": 0x1E00},
    {"lang": "DE", "address": 0x15748A, "compressed_length": 0x224C},
]

# Creditos finales: bloque plano de secciones.
#   - Unico puntero: inmediato de 32 bits en CREDITS_POINTER_OFF (instruccion
#     'movea.l #imm, a7' en 0x1E770, seguida de 'jsr 0xB7C0').
#   - Formato: [prefix 0x01] titulo\0 nombre\0 ... \0\0 \x01 titulo\0 ... [suffix]
#     Las secciones se separan con 0x01 y los campos con 0x00.
#   - El texto visible termina en 0x1C6E41 ("KEEP ON THINKING"); el hueco libre
#     del bloque original llega hasta 0x1C6E51 (907 bytes desde 0x1C6AC6).
CREDITS_START = 0x1C6AC6
CREDITS_LIMIT = 0x1C6E51
CREDITS_POINTER_OFF = 0x1E778  # inmediato de 'movea.l #imm, a7' (opcode 2e bc en 0x1E776)
CREDITS_RENDER_ROUTINE = 0xB7C0

BLOCKS = [
    {"name": "T1_principal", "pointer_address": 0x1C7E2C, "count": 618,
     "note": "Paises, objetivos, menus y equipamiento. Triples EN/FR/DE."},
    {"name": "T2_reclutamiento", "pointer_address": 0x1C87E0, "count": 39,
     "note": "Textos de reclutamiento. Triples EN/FR/DE. Las 3 primeras entradas estan vacias."},
    {"name": "T3_menus", "pointer_address": 0x1C88D0, "count": 204,
     "note": "Menus in-game (0-101) + paises (102-203, comparten direcciones con T1)."},
    {"name": "T4_agentes", "pointer_address": 0x1C7942, "count": 82,
     "note": "Nombres de agentes (0-68). Las entradas 69+ no son texto."},
]


def load_tbl(path):
    """Carga un .tbl (lineas HH=char). Devuelve dict byte->str y dict str->byte."""
    fwd = {}
    rev = {}
    with open(path, "r", encoding="utf-8") as f:
        for raw in f:
            line = raw.rstrip("\r\n")
            if not line.strip() or line.strip().startswith("#"):
                continue
            if "=" not in line:
                continue
            hexpart, char = line.split("=", 1)
            hexpart = hexpart.strip()
            # el caracter puede ser un espacio simple, no usar strip()
            char = char.rstrip("\r\n")
            if not hexpart or not char:
                continue
            try:
                b = int(hexpart, 16)
            except ValueError:
                continue
            if b > 0xFF:
                continue
            fwd[b] = char
            rev[char] = b
    return fwd, rev


def read_string(data, addr):
    """Lee un string terminado en 0x00 desde addr (validando la zona)."""
    if not (TEXT_ZONE_START <= addr < TEXT_ZONE_END):
        return None
    end = addr
    while end < TEXT_ZONE_END and data[end] != 0:
        end += 1
    if end >= TEXT_ZONE_END:
        return None
    return data[addr:end]


def decode(raw, tbl):
    out = []
    for b in raw:
        out.append(tbl.get(b, "[%02X]" % b))
    return "".join(out)


def decompress_lzss(data, start, end):
    """Descomprime un bloque LZSS (rutina del juego en 0x4836).

    Ventana circular de 0x1000 bytes en RAM 0xFFFF0A12, puntero inicial 0xFEE,
    mascara 0xFFF. Bitstream: byte de control de 8 bits (bit 0 = literal,
    bit 0 = 0 -> match), avanza con lsr de d5; cuando bit 8 se limpia se lee
    un nuevo byte de control. Match: 2 bytes -> offset = (b2>>4)<<8 | b1,
    longitud = (b2 & 0xF) + 3 (el primer byte se copia antes del bucle dbra).
    """
    buf = [0] * 0x1000
    d3 = 0xFEE
    a1 = start
    a4 = end
    out = bytearray()
    d5 = 0
    while True:
        d5 = (d5 >> 1) & 0xFFFF
        if (d5 >> 8) & 1:
            pass
        else:
            if a1 >= a4:
                break
            d4 = data[a1]
            a1 += 1
            d5 = 0xFF00 | d4
        if d5 & 1:
            if a1 >= a4:
                break
            d4 = data[a1]
            a1 += 1
            out.append(d4)
            buf[d3 & 0xFFF] = d4
            d3 = (d3 + 1) & 0xFFF
        else:
            if a1 >= a4:
                break
            b1 = data[a1]
            a1 += 1
            if a1 >= a4:
                break
            b2 = data[a1]
            a1 += 1
            d0 = ((b2 >> 4) << 8) | b1
            d1 = (b2 & 0xF) + 3
            for _ in range(d1):
                v = buf[d0 & 0xFFF]
                d0 = (d0 + 1) & 0xFFF
                out.append(v)
                buf[d3 & 0xFFF] = v
                d3 = (d3 + 1) & 0xFFF
    return bytes(out)


def extract_mission_strings(data, block):
    """Descomprime un bloque de misiones y devuelve la lista de cadenas
    (tras los 100 bytes de diccionario), cada una con su offset en el buffer."""
    addr = block["address"]
    clen = (data[addr] << 8) | data[addr + 1]
    raw = decompress_lzss(data, addr + 2, addr + 2 + clen)
    body = raw[MISSION_DICT_SIZE:]
    strings = []
    pos = 0
    for s in body.split(b"\x00"):
        if s:
            strings.append((s, pos))
        pos += len(s) + 1
    return strings


def extract_credits(data):
    """Extrae el bloque de creditos finales.

    Formato: secuencia de [separador][campo]. Los separadores (0x01 entre
    secciones, 0x00 entre campos) se conservan tal cual para poder reconstruir
    el bloque byte a byte al insertar. Devuelve (seps, fields) con bytes.
    """
    start = CREDITS_START
    end = CREDITS_LIMIT
    raw = data[start:end]
    seps = []
    fields = []
    i = 0
    n = len(raw)
    while i < n:
        j = i
        while j < n and raw[j] in (0, 1):
            j += 1
        seps.append(raw[i:j])
        j2 = j
        while j2 < n and raw[j2] not in (0, 1):
            j2 += 1
        fields.append(raw[j:j2])
        i = j2
    assert b"".join(s + f for s, f in zip(seps, fields)) == raw, "round-trip creditos"
    return seps, fields


def main():
    with open(BASE_ROM, "rb") as f:
        data = f.read()
    tbl_fwd, _ = load_tbl(TBL)

    blocks_out = {}
    for blk in BLOCKS:
        msgs = {}
        pa = blk["pointer_address"]
        for i in range(blk["count"]):
            ptr = struct.unpack(">I", data[pa + i * 4: pa + i * 4 + 4])[0]
            raw = read_string(data, ptr)
            if raw is None:
                # No es un puntero a texto (p.ej. terminadores de T4)
                continue
            text = decode(raw, tbl_fwd)
            msgs[str(i)] = {
                "text_offset": "0x%05X" % ptr,
                "pointer_offset": "0x%05X" % (pa + i * 4),
                "original": text,
                "translated": "",
            }
        blocks_out[blk["name"]] = {
            "text_address": "0x%05X" % TEXT_ZONE_START,
            "pointer_address": "0x%05X" % blk["pointer_address"],
            "method": "punteros_32_null",
            "note": blk["note"],
            "messages": msgs,
        }

    # T5: resumenes de mision (comprimidos LZSS). 100 cadenas por idioma,
    # intercaladas como triples EN/FR/DE (indice = base*3 + idioma).
    msgs = {}
    for lang_idx, blk in enumerate(MISSION_BLOCKS):
        strings = extract_mission_strings(data, blk)
        for i, (raw, pos) in enumerate(strings):
            idx = i * 3 + lang_idx
            msgs[str(idx)] = {
                "text_offset": "0x%05X" % (MISSION_BUFFER_RAM + MISSION_DICT_SIZE + pos),
                "pointer_offset": "0x%05X" % MISSION_POINTER_TABLE,
                "original": decode(raw, tbl_fwd),
                "translated": "",
            }
    blocks_out["T5_misiones"] = {
        "text_address": "0x%05X" % MISSION_BUFFER_RAM,
        "pointer_address": "0x%05X" % MISSION_POINTER_TABLE,
        "method": "lzss_100_titulo_texto",
        "note": "Resumenes de mision comprimidos (LZSS). 50 misiones x (titulo+texto). "
                "Triples EN/FR/DE: indice = base*3 + idioma. text_offset = offset en RAM.",
        "messages": msgs,
    }

    # T6: creditos finales (bloque plano de secciones).
    seps, fields = extract_credits(data)
    msgs = {}
    for i, f in enumerate(fields):
        if not f:
            continue
        addr = CREDITS_START + sum(len(s) + len(g) for s, g in zip(seps[:i], fields[:i])) + len(seps[i])
        msgs[str(i)] = {
            "text_offset": "0x%05X" % addr,
            "pointer_offset": "0x%05X" % CREDITS_POINTER_OFF,
            "original": decode(f, tbl_fwd),
            "translated": "",
        }
    blocks_out["T6_creditos"] = {
        "text_address": "0x%05X" % CREDITS_START,
        "pointer_address": "0x%05X" % CREDITS_POINTER_OFF,
        "method": "creditos_secciones",
        "note": "Creditos finales. Bloque plano: secciones separadas por 0x01, "
                "campos (titulo/nombres) separados por 0x00. Puntero: inmediato "
                "movea.l #imm,a7 en CREDITS_POINTER_OFF. El texto real termina en "
                "KEEP ON THINKING; el resto hasta CREDITS_LIMIT es padding 0x00.",
        "messages": msgs,
    }

    out = {
        "schema": 1,
        "comment": "Syndicate (Mega Drive). Textos extraidos con story_extract.tbl. "
                   "Traducir 'translated' en texts_translated.json.",
        "blocks": blocks_out,
    }
    with open(OUT_JSON, "w", encoding="utf-8") as f:
        json.dump(out, f, ensure_ascii=False, indent=2)
    n = sum(len(b["messages"]) for b in blocks_out.values())
    print("Extract OK: %d mensajes en %d bloques -> %s" % (n, len(blocks_out), OUT_JSON))


if __name__ == "__main__":
    main()
