#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
insert_all.py - Inserta las traducciones de texts_translated.json en la ROM.

Estrategia (decidida):
  - Solo se inserta el slot INGLES (indice % 3 == 0) de T1/T2/T3.
  - El texto traducido se escribe en su text_offset, pudiendo expandirse sobre
    los slots FR/DE (espacio muerto) porque el idioma se fuerza a 0.
  - T4 (nombres de agentes) no se modifica.
  - story_insert.tbl mapea caracteres espanoles a la fuente del juego.
  - Parche de codigo: fuerza el byte de idioma (RAM 0xFFA97E) a 0.

El analisis previo confirmo que los 286 textos EN traducidos caben en su hueco
(hasta el siguiente string activo) con un crecimiento total de 143 bytes.
"""

import json
import struct

import lzss_comp
from extract_all import (
    CREDITS_LIMIT,
    CREDITS_POINTER_OFF,
    CREDITS_START,
    extract_credits,
)

BASE_ROM = "Syndicate (USA, Europe) (En,Fr,De).md"
OUT_ROM = "TR_Syndicate (USA, Europe) (En,Fr,De).md"
IN_JSON = "texts_translated.json"
TBL = "story_insert.tbl"

TEXT_ZONE_END = 0x2A010

# Bloque de misiones (T5). Formato por idioma:
#   word BE = longitud comprimida; stream LZSS desde [2].
#   Se descomprime a RAM 0xFFFF5392; los primeros MISSION_DICT_SIZE bytes son
#   un diccionario de offsets (50 words BE = offset de cada titulo) y el resto
#   son pares titulo\0texto\0 en orden de mision.
# Solo el bloque EN se reinserta (idioma forzado a 0); el nuevo bloque es mas
# grande que el hueco original, asi que se escribe en espacio libre y se
# actualiza el puntero EN de MISSION_POINTER_TABLE.
MISSION_DICT_SIZE = 100
MISSION_POINTER_TABLE = 0x1537D4
MISSION_FREE_ADDR = 0x1FC500  # hueco libre de 15104 bytes al final del ROM

# Anti-pirateria del juego: rutina en 0x1FC4B0 suma longs BE desde 0x0 hasta
# 0x1FC4B0 (0x7F12C iteraciones, saltando el campo de checksum del header en
# 0x18C..0x190) y compara el resultado con la constante de 4 bytes en
# 0x1FC4CC. Si no coincide, entra en un bucle infinito (pantalla negra).
# Por eso hay que recalcular esta constante tras modificar cualquier byte
# dentro de 0x0..0x1FC4B0. La constante en si esta fuera del rango sumado.
AP_CHECKSUM_START = 0x000000
AP_CHECKSUM_END = 0x1FC4B0
AP_CHECKSUM_SKIP = 0x18C
AP_CHECKSUM_SKIP_LEN = 4
AP_CONST_OFF = 0x1FC4CC

# Parche de idioma. La rutina de seleccion en 0xDFE8 escribe el byte de idioma
# en RAM 0xFFA97E: 0xE000 pone 1 (FR), 0xE020 pone 2 (DE). El default 0 ya lo
# ponen 0xDFBC/0xCBEE. Forzamos que ambos condicionales escriban 0.
#   move.b #imm, $ffffa97e.l  ->  inmediato en el byte bajo de la extension word
LANG_PATCHES = [
    (0xE003, 0x00),  # 01 (FR) -> 00
    (0xE023, 0x00),  # 02 (DE) -> 00
]


def anti_piracy_checksum(data):
    """Replica la rutina de 0x1FC4B0: suma longs BE del ROM omitiendo el campo
    de checksum del header, mod 2^32. Devuelve el valor que debe quedar en 0x1FC4CC."""
    d0 = 0
    a0 = AP_CHECKSUM_START
    for _ in range(0x7F12C):
        if a0 == AP_CHECKSUM_SKIP:
            a0 += AP_CHECKSUM_SKIP_LEN
        else:
            d0 = (d0 + int.from_bytes(data[a0:a0 + 4], "big")) & 0xFFFFFFFF
            a0 += 4
    return d0


def load_insert_tbl(path):
    """Carga story_insert.tbl (lineas HH=char). Devuelve dict char->byte."""
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
            char = char.rstrip("\r\n")
            if not hexpart or not char:
                continue
            try:
                b = int(hexpart, 16)
            except ValueError:
                continue
            if b > 0xFF:
                continue
            rev[char] = b
    return rev


def encode(text, rev):
    """Codifica texto traducido a bytes ROM + null terminator."""
    out = bytearray()
    for ch in text:
        if ch not in rev:
            raise KeyError("Caracter sin codificacion: %r" % ch)
        out.append(rev[ch])
    out.append(0)
    return bytes(out)


def build_mission_block(msgs, rev):
    """Construye el buffer descomprimido EN de misiones:
    100 bytes de diccionario (50 words BE = offset de cada titulo) + pares
    titulo\0texto\0. En el JSON, la mision i usa titulo en idx=i*6 y texto en
    idx=i*6+3 (slot EN, idioma 0). Devuelve bytes."""
    table = bytearray(MISSION_DICT_SIZE)
    body = bytearray()
    offsets = []
    for i in range(50):
        title = msgs.get(str(i * 6), {}).get("translated", "")
        text = msgs.get(str(i * 6 + 3), {}).get("translated", "")
        if not title or not text:
            raise ValueError("Mision %d sin traduccion" % i)
        offsets.append(MISSION_DICT_SIZE + len(body))
        body += encode(title, rev)
        body += encode(text, rev)
    for i, off in enumerate(offsets):
        table[i * 2] = (off >> 8) & 0xFF
        table[i * 2 + 1] = off & 0xFF
    return bytes(table) + bytes(body)


def build_credits_block(msgs, rev, data):
    """Reconstruye el bloque de creditos finales a partir de las traducciones.

    Se conservan los separadores originales (0x01 entre secciones, 0x00 entre
    campos). Cada campo se traduce si existe 'translated' y no esta vacio; si
    no, se mantiene el original. Devuelve bytes del bloque nuevo."""
    seps, fields = extract_credits(data)
    out = bytearray()
    for i, f in enumerate(fields):
        out += seps[i]
        msg = msgs.get(str(i), {})
        t = msg.get("translated", "")
        # Sin null terminator: los separadores originales (0x00/0x01) ya
        # delimitan los campos. Usar encode() ariadiria un \0 extra y partiria
        # la estructura titulo\0nombre que espera la rutina 0xB7C0.
        out += bytes(rev[ch] for ch in t) if t else f
    return bytes(out)


def main():
    with open(BASE_ROM, "rb") as f:
        data = bytearray(f.read())
    rev = load_insert_tbl(TBL)
    with open(IN_JSON, encoding="utf-8") as f:
        j = json.load(f)

    # Strings activos (se muestran con idioma=0): slots EN (idx%3==0) + T4.
    # Son los limites que NUNCA se deben invadir al sobrescribir.
    active = set()
    for bn, blk in j["blocks"].items():
        if bn == "T5_misiones":
            continue
        for k, msg in blk["messages"].items():
            if bn == "T4_agentes" or int(k) % 3 == 0:
                active.add(int(msg["text_offset"], 16))
    active = sorted(active)

    # Mapas addr -> bytes, solo slots EN con traduccion.
    # T6_creditos se excluye: sus text_offset caen dentro del bloque plano de
    # creditos y ya se reconstruye completo en build_credits_block().
    to_write = {}
    for bn, blk in j["blocks"].items():
        if bn in ("T4_agentes", "T5_misiones", "T6_creditos"):
            continue
        for k, msg in blk["messages"].items():
            if int(k) % 3 != 0:
                continue
            t = msg["translated"]
            if not t:
                continue
            addr = int(msg["text_offset"], 16)
            to_write[addr] = encode(t, rev)

    # Verificacion de encaje: el texto puede invadir FR/DE pero no el siguiente
    # string activo ni el final de la zona.
    import bisect
    errors = []
    for addr in sorted(to_write):
        nb = to_write[addr]
        i = bisect.bisect_right(active, addr)
        nxt = active[i] if i < len(active) else TEXT_ZONE_END
        if addr + len(nb) > nxt:
            errors.append((addr, len(nb), nxt - addr))
    if errors:
        for a, ln, av in errors:
            print("ERROR: no cabe en hueco @0x%X len=%d (avail=%d)" % (a, ln, av))
        raise SystemExit("Traducciones no caben en el hueco; revisar.")

    # Escribir textos en su sitio.
    for addr, nb in to_write.items():
        data[addr:addr + len(nb)] = nb

    # Bloque de misiones (T5): reconstruir buffer EN, comprimir LZSS y escribir
    # en espacio libre; actualizar puntero EN de la tabla de misiones.
    mission_raw = build_mission_block(j["blocks"]["T5_misiones"]["messages"], rev)
    mission_stream = lzss_comp.compress_lzss(mission_raw)
    mission_blob = struct.pack(">H", len(mission_stream)) + mission_stream
    mission_end = MISSION_FREE_ADDR + len(mission_blob)
    assert mission_end < 0x200000, "Bloque de misiones excede el final del ROM"
    assert all(b == 0xFF for b in data[MISSION_FREE_ADDR:mission_end]), \
        "Espacio libre de misiones ocupado"
    data[MISSION_FREE_ADDR:mission_end] = mission_blob
    data[MISSION_POINTER_TABLE:MISSION_POINTER_TABLE + 4] = \
        struct.pack(">I", MISSION_FREE_ADDR)
    print("Misiones: buffer=%d comprimido=%d bytes @0x%X (puntero actualizado)"
          % (len(mission_raw), len(mission_stream), MISSION_FREE_ADDR))

    # Creditos finales (T6): reconstruir el bloque plano y comprobar si cabe en
    # el hueco original. El bloque original mide 907 bytes (0x1C6AC6..0x1C6E51);
    # si la traduccion lo supera, se mueve a espacio libre tras las misiones y
    # se parchea el inmediato 'movea.l #imm, a7' en CREDITS_POINTER_OFF.
    cred_raw = build_credits_block(j["blocks"]["T6_creditos"]["messages"], rev, bytes(data))
    credits_hole = CREDITS_LIMIT - CREDITS_START
    if len(cred_raw) <= credits_hole:
        cred_addr = CREDITS_START
        data[CREDITS_START:CREDITS_START + len(cred_raw)] = cred_raw
        new_ptr = CREDITS_START
    else:
        cred_addr = MISSION_FREE_ADDR + len(mission_blob)
        assert cred_addr + len(cred_raw) < 0x200000, "Creditos exceden el ROM"
        assert all(b == 0xFF for b in data[cred_addr:cred_addr + len(cred_raw)]), \
            "Espacio libre de creditos ocupado"
        data[cred_addr:cred_addr + len(cred_raw)] = cred_raw
        new_ptr = cred_addr
        # Parchear el inmediato de la instruccion movea.l #imm, a7
        assert data[CREDITS_POINTER_OFF - 2:CREDITS_POINTER_OFF] == b"\x2e\xbc", \
            "Opcode movea.l no encontrado"
        data[CREDITS_POINTER_OFF:CREDITS_POINTER_OFF + 4] = struct.pack(">I", new_ptr)
    print("Creditos: bloque=%d bytes @0x%X (hueco=%d, puntero=%s)"
          % (len(cred_raw), cred_addr, credits_hole,
             "original" if new_ptr == CREDITS_START else "0x%X" % new_ptr))

    # Parche de idioma.
    for off, val in LANG_PATCHES:
        data[off] = val

    # Anti-pirateria: recalcular la constante que verifica la rutina 0x1FC4B0.
    data[AP_CONST_OFF:AP_CONST_OFF + 4] = anti_piracy_checksum(bytes(data)).to_bytes(4, "big")

    # Checksum del header (no lo verifica el juego pero lo usa Hextractor):
    # suma de words BE 0x200..fin en 0x18E.
    chk = 0
    for i in range(0x200, len(data) - 1, 2):
        chk = (chk + ((data[i] << 8) | data[i + 1])) & 0xFFFF
    data[0x18E] = (chk >> 8) & 0xFF
    data[0x18F] = chk & 0xFF

    with open(OUT_ROM, "wb") as f:
        f.write(bytes(data))
    print("Insert OK: %d textos escritos (%d activos), idioma forzado a 0 -> %s"
          % (len(to_write), len(active), OUT_ROM))


if __name__ == "__main__":
    main()
