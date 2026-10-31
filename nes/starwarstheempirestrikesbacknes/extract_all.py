#!/usr/bin/env python3
"""extract_all.py - Extrae los textos de la ROM base a texts.json.

Reglas (tr_rules.md):
  * Solo lee la ROM base y las tablas main_extract*.tbl.
  * Los bytes que no estan en la tabla se extraen como [HH].
  * 0x00 = salto de linea, 0xFF = fin de bloque.
  * texts.json contiene los originales; texts_translated.json es su copia.
"""
import json
import os
import sys

import compress    # modulo del formato de pantallas comprimidas (misma carpeta)

HERE = os.path.dirname(os.path.abspath(__file__))

ROM_NAME = "Star Wars - The Empire Strikes Back (USA).nes"
TBL_EXTRACT = "main_extract.tbl"
OUT_TEXTS = "texts.json"
OUT_TRANSLATED = "texts_translated.json"

# --- Estructura de la ROM (mapper 4 / MMC3) ---
BANK5_BASE = 0x14010      # offset PRG del banco 5
BANK5_WINDOW = 0x8000     # banco 5 mapeado en $8000-$BFFF
DIALOGUE_TABLE = 0x169C4  # tabla de punteros de dialogo (CPU $A9B4)
DIALOGUE_LIMIT = 512      # tope de seguridad al leer la tabla

# Bloque de dialogo: un mensaje por bloque FF, lineas separadas por 0x00.
DIALOGUE = {
    "name": "dialogue",
    "text_address": "0x16A3A",
    "pointer_address": "0x169C4",
    "method": "ff_terminated",
    "note": "Dialogo del juego; punteros en bank 5 (ventana $8000), "
            "tabla en PRG 0x169C4. Varios punteros pueden compartir bloque.",
}

# Secciones de texto fijo (nombres de musica/efectos y menus) sin tabla de
# punteros conocida; regiones [inicio, fin) con terminador 0xFF.
NAME_SECTIONS = [
    {"name": "sound_music", "start": 0x15D49, "end": 0x15E02,
     "note": "Nombres de secuencias musicales (MUSICAL SEQUENCES)."},
    {"name": "sound_sfx", "start": 0x15E02, "end": 0x15EFD,
     "note": "Nombres de efectos (EMPIRE SOUNDFX)."},
    {"name": "sound_digital", "start": 0x15EFD, "end": 0x15FFD,
     "note": "Sonidos digitales / menu (DIGITAL SOUNDS)."},
]

# Segunda tabla de codificacion: alfabeto de la fuente CHR0 (letras en orden de
# frecuencia), el que usan las pantallas de creditos/intro.
TBL_EXTRACT2 = "main_extract2.tbl"

# Pantallas comprimidas: tabla de 4 bytes por pantalla en el banco fijo
# ($CA96 = PRG 0x3CAB6). Cada stream descomprime a 1024 bytes = nametable
# (960) + atributos (64), y ESOS 1024 bytes son el contenido de VRAM
# $2000-$23FF. El texto de los creditos y del crawl 1 ("A LONG TIME AGO...")
# vive dentro de esas nametables (pantallas 0 y 1), no en un bloque de texto
# aparte: lo que parecia un bloque suelto era el flujo comprimido en crudo.
#
# Cada pantalla con texto usa la FUENTE de SUS bancos CHR (2 KB por mitad de
# pattern table), asi que la tabla de codificacion es distinta por fuente:
#   pantallas 0, 1, 2  -> banco 2 KB 0   main_extract2.tbl (creditos)
#   pantalla 8         -> banco 2 KB 7   main_extract4.tbl
#   pantallas 11, 12   -> banco 2 KB 11  main_extract5.tbl
#   pantallas 13, 14   -> banco 2 KB 13  main_extract6.tbl
#   pantallas 17, 18, 19 -> banco 2 KB 8 main_extract7.tbl (titulo/menu)
# Ver work/make_font_tables.py (generador de esas tablas y sets de letras) y
# work/verify_screen_fonts.py (decodifica el texto de cada pantalla).
SCREENS = {
    "name": "screens",
    "table": 0x3CAA6,   # fichero: tabla $CA96 (banco fijo), 4 bytes por ranura
    "slots": 20,        # ranuras validas de la tabla (el resto es basura)
    "stride": 4,
    "size": 1024,       # nametable 960 + atributos 64
    "cols": 32,
    # Estas pantallas llevan texto: 0/1/2 (creditos y tarjeta del crawl),
    # 8 (mensajes del imperio), 11/12 y 13/14 (mensajes de Yoda) y 17/18
    # (titulo y menu CONTINUES:). Las demas son graficos (logos, mapas,
    # pantallas de nivel): se validan al extraer, pero no se emiten como
    # mensajes porque no hay nada que traducir en ellas.
    "text_screens": (0, 1, 8, 11, 12, 13, 14, 17, 18),
    # tabla de extraccion de cada pantalla con texto (por defecto la de main_extract2)
    "screen_tables": {
        8: "main_extract4.tbl",
        11: "main_extract5.tbl",
        12: "main_extract5.tbl",
        13: "main_extract6.tbl",
        14: "main_extract6.tbl",
        17: "main_extract7.tbl",
        18: "main_extract7.tbl",
    },
    "note": "Pantallas comprimidas (creditos, logo, crawl 1, mensajes...). Cada "
            "mensaje es una pantalla: texto = 32 filas de 32 caracteres con la "
            "tabla de la FUENTE de esa pantalla (campo 'table': la fuente vive "
            "en sus bancos CHR de 2 KB y no es la misma en todas las pantallas; "
            "los bytes que no estan en la tabla salen como [HH] y se conservan "
            "tal cual, que es como quedan los graficos). "
            "Llevan texto las pantallas 0/1/2 (creditos y tarjeta del crawl), 8 "
            "(mensajes del imperio), 11/12 y 13/14 (mensajes de Yoda) y 17/18 "
            "(titulo y menu CONTINUES:); el resto son graficos y no se emiten. "
            "IMPORTANTE: las filas 30 y 31 del texto son los ATRIBUTOS de la "
            "pantalla (van siempre como [HH]); no hay que tocarlas, pero hay "
            "que dejar las 32 filas de 32 caracteres. La traduccion de cada "
            "pantalla solo puede usar las letras que existan en su fuente "
            "(work/make_font_tables.py lista las que faltan en cada una).",
}


# Tercera tabla: bloque crawl (intro y texto final). El texto se guarda en el
# banco 5 como stream de indices de 1 byte (16 por fila); cada indice apunta a
# una entrada del diccionario de bigramas, que contiene 2 caracteres.
TBL_EXTRACT3 = "main_extract3.tbl"

CRAWL = {
    "name": "crawl",
    "dictionary": 0x8802,   # CPU: entrada k -> byte 0x8802 + 4*k (2 utiles)
    "dict_stride": 4,
    "row_start": 0x8010,    # CPU: primera fila del stream
    "row_end": 0x8500,      # CPU: fin de la zona de texto del stream
    "cells": 16,            # 16 bigramas por fila = 32 caracteres
    "note": "Crawl de introduccion y texto final. La ROM guarda un stream de "
            "indices de bigramas (16 por fila, 32 caracteres por fila); el "
            "diccionario esta en $8802 (paso 4, 2 bytes utiles por entrada). "
            "Los caracteres usan main_extract3.tbl. Las filas de graficos que "
            "comparten el stream (bytes fuera de la tabla) no entran en el "
            "bloque, y sus entradas del diccionario se conservan al insertar.",
}


def load_tbl(path):
    """Carga una tabla HH=caracter a un diccionario byte -> str."""
    table = {}
    with open(path, "r", encoding="utf-8") as fh:
        for line in fh.read().splitlines():
            if not line or line.startswith("#") or "=" not in line:
                continue
            hx, ch = line.split("=", 1)
            try:
                byte = int(hx, 16)
            except ValueError:
                continue
            if ch == "":
                continue
            table[byte] = ch
    return table


def decode(data, start, table, newline=True):
    """Decodifica desde start hasta 0xFF (no incluido). Devuelve (texto, fin).

    Si newline, el byte 0x00 se representa como el token '<nl>' (dialogo).
    Si no (bloque de introduccion), 0x00 se resuelve con la tabla (espacio).
    """
    out = []
    i = start
    n = len(data)
    while i < n:
        b = data[i]
        if b == 0xFF:
            break
        if newline and b == 0x00:
            out.append("<nl>")
        elif b in table:
            out.append(table[b])
        else:
            out.append("[%02X]" % b)
        i += 1
    return "".join(out), i


def cpu_to_prg(cpu):
    return BANK5_BASE + (cpu - BANK5_WINDOW)


def crawl_dict_entry(data, k):
    """Devuelve los 2 bytes de caracter de la entrada k del diccionario."""
    off = cpu_to_prg(CRAWL["dictionary"]) + k * CRAWL["dict_stride"]
    return data[off:off + 2]


def parse_screen_line(line, table, inv):
    """Convierte una fila de texto (con escapes [HH]) a bytes."""
    out = bytearray()
    i = 0
    while i < len(line):
        c = line[i]
        if c == "[":
            j = line.find("]", i)
            if j < 0:
                raise ValueError("escape '[' sin cerrar: %r" % line)
            out.append(int(line[i + 1:j], 16))
            i = j + 1
        elif c in inv:
            out.append(inv[c])
            i += 1
        else:
            raise ValueError("caracter sin tabla en pantalla: %r" % c)
    return bytes(out)


def screens_extract(data, table):
    """Extrae las pantallas comprimidas como texto (32 filas de 32 bytes).

    Devuelve (mensajes, validadas): solo se emiten las pantallas con texto
    (SCREENS['text_screens']); las de graficos se descomprimen igual y se
    comprueba que cada fila vuelve a dar exactamente los mismos bytes (ida y
    vuelta sin perdida), pero no se emiten porque no hay texto que traducir.

    Cada pantalla con texto usa la tabla de SU fuente (SCREENS['screen_tables'],
    campo 'table' del mensaje); 'table' es la tabla por defecto de las pantallas
    0-2 (la del banco 2 KB 0).
    """
    cache = {}
    default_table = table

    def table_of(i):
        name = SCREENS["screen_tables"].get(i)
        if name is None:
            return default_table, None
        if name not in cache:
            cache[name] = load_tbl(os.path.join(HERE, name))
        return cache[name], name

    cols = SCREENS["cols"]
    rows = SCREENS["size"] // cols
    msgs = {}
    validated = 0
    for i in range(SCREENS["slots"]):
        table, tbl_name = table_of(i)
        inv = {c: b for b, c in table.items()}
        eoff = SCREENS["table"] + i * SCREENS["stride"]
        param, bank, lo, hi = data[eoff], data[eoff + 1], data[eoff + 2], data[eoff + 3]
        ptr = lo | (hi << 8)
        if bank * 0x4000 + 0x4000 > 0x40000:
            continue
        bank_prg = data[16 + bank * 0x4000:16 + (bank + 1) * 0x4000]
        mem = compress.make_mem(bank_prg)
        out, end = compress.decompress(mem, ptr, SCREENS["size"] + 64)
        if len(out) != SCREENS["size"]:
            continue        # ranura vacia/invalida
        lines = []
        for r in range(rows):
            row = out[r * cols:(r + 1) * cols]
            # filas 0-29 = nametable; 30-31 = atributos (siempre como [HH])
            if r < rows - 2:
                line = "".join(table.get(b, "[%02X]" % b) for b in row)
            else:
                line = "".join("[%02X]" % b for b in row)
            try:
                back = parse_screen_line(line, table, inv)
            except ValueError:
                back = None
            if back != bytes(row):
                sys.exit("ERROR: la pantalla %d, fila %d no vuelve a dar los "
                         "mismos bytes" % (i, r))
            lines.append(line)
        validated += 1
        if i not in SCREENS["text_screens"]:
            continue
        file_off = 16 + bank * 0x4000 + (ptr - 0x8000)
        msgs[str(i)] = {
            "text_offset": addr(file_off),
            "pointer_offset": addr(eoff),
            "screen": i,
            "bank": bank,
            "text_pointer": "0x%04X" % ptr,
            "stream_length": end - ptr,
            "table": tbl_name or TBL_EXTRACT2,
            "original": "\n".join(lines),
            "translated": "\n".join(lines),
        }
    return msgs, validated


def crawl_extract(data, table):
    """Extrae las filas de texto del crawl.

    Devuelve (messages, indices_usados). Cada fila son 16 indices; una fila es
    texto si sus 16 entradas se decodifican con la tabla. Se comprueba que el
    texto vuelve a producir los mismos bytes de cada entrada (ida y vuelta).
    """
    inv = {c: b for b, c in table.items()}
    cells = CRAWL["cells"]
    msgs = {}
    used = set()
    off = cpu_to_prg(CRAWL["row_start"])
    end = cpu_to_prg(CRAWL["row_end"])
    while off < end:
        row = data[off:off + cells]
        text = []
        ok = len(row) == cells
        for k in row:
            entry = crawl_dict_entry(data, k)
            if len(entry) != 2 or entry[0] not in table or entry[1] not in table:
                ok = False
                break
            text.append(table[entry[0]] + table[entry[1]])
        if ok:
            text = "".join(text)
            for i, k in enumerate(row):
                entry = crawl_dict_entry(data, k)
                try:
                    back = bytes(inv[c] for c in text[2 * i:2 * i + 2])
                except KeyError:
                    sys.exit("ERROR: crawl en %s: caracter sin tabla" % addr(off))
                if back != entry:
                    sys.exit("ERROR: crawl en %s: la celda %d no vuelve a dar "
                             "los mismos bytes" % (addr(off), i))
            used.update(row)
            if text.strip(" "):
                msgs[str(len(msgs))] = {
                    "text_offset": addr(off),
                    "pointer_offset": None,
                    "pointer_offsets": [],
                    "cells": cells,
                    "original": text,
                    "translated": text,
                }
        off += cells
    return msgs, used


def read_pointer_table(data):
    """Devuelve [(pointer_offset, text_offset), ...] de la tabla de dialogo."""
    entries = []
    off = DIALOGUE_TABLE
    while len(entries) < DIALOGUE_LIMIT:
        value = data[off] | (data[off + 1] << 8)
        if not (0x8000 <= value < 0xC000):
            break
        entries.append((off, cpu_to_prg(value)))
        off += 2
    return entries


def addr(x):
    return "0x%06X" % x


def main():
    table = load_tbl(os.path.join(HERE, TBL_EXTRACT))
    table2 = load_tbl(os.path.join(HERE, TBL_EXTRACT2))
    rom_path = os.path.join(HERE, ROM_NAME)
    with open(rom_path, "rb") as fh:
        data = fh.read()

    if data[:4] != b"NES\x1a":
        sys.exit("ERROR: la ROM no tiene cabecera iNES valida")
    if data[6] >> 4 != 4:
        sys.exit("ERROR: se esperaba mapper 4")
    if len(data) != 16 + data[4] * 16384 + data[5] * 8192:
        sys.exit("ERROR: tamano de ROM incoherente con la cabecera")

    blocks = {}

    # --- Bloque de dialogo ---
    entries = read_pointer_table(data)
    messages = {}
    by_text = {}
    for pointer_off, text_off in entries:
        if text_off not in by_text:
            text, end = decode(data, text_off, table)
            if data[end] != 0xFF:
                sys.exit("ERROR: bloque sin terminador 0xFF en %s" % addr(text_off))
            by_text[text_off] = len(messages)
            messages[str(len(messages))] = {
                "text_offset": addr(text_off),
                "pointer_offset": addr(pointer_off),
                "pointer_offsets": [addr(pointer_off)],
                "original": text,
                "translated": text,
            }
        else:
            key = str(by_text[text_off])
            messages[key]["pointer_offsets"].append(addr(pointer_off))
    blocks["dialogue"] = {
        "text_address": DIALOGUE["text_address"],
        "pointer_address": DIALOGUE["pointer_address"],
        "method": DIALOGUE["method"],
        "note": DIALOGUE["note"],
        "messages": messages,
    }

    # --- Secciones de texto fijo ---
    for sec in NAME_SECTIONS:
        text, end = decode(data, sec["start"], table)
        if data[end] != 0xFF:
            sys.exit("ERROR: seccion '%s' sin terminador 0xFF" % sec["name"])
        if end != sec["end"] - 1:
            sys.exit("ERROR: seccion '%s' termina en %s, se esperaba %s"
                     % (sec["name"], addr(end), addr(sec["end"] - 1)))
        blocks[sec["name"]] = {
            "text_address": addr(sec["start"]),
            "pointer_address": None,
            "method": "ff_terminated",
            "note": sec["note"],
            "messages": {
                "0": {
                    "text_offset": addr(sec["start"]),
                    "pointer_offset": None,
                    "pointer_offsets": [],
                    "original": text,
                    "translated": text,
                }
            },
        }

    # --- Pantallas comprimidas (creditos y crawl 1: solo las que llevan texto) ---
    screen_msgs, screens_validated = screens_extract(data, table2)
    if not screen_msgs:
        sys.exit("ERROR: no se ha podido extraer ninguna pantalla comprimida")
    blocks[SCREENS["name"]] = {
        "text_address": None,
        "pointer_address": addr(SCREENS["table"]),
        "method": "compressed_screen",
        "note": SCREENS["note"],
        "screen_size": SCREENS["size"],
        "screen_rows": SCREENS["size"] // SCREENS["cols"],
        "screen_cols": SCREENS["cols"],
        "screens_validated": screens_validated,
        "text_screens": list(SCREENS["text_screens"]),
        "alphabet": TBL_EXTRACT2,
        "alphabets": {str(k): v for k, v in
                      sorted(SCREENS["screen_tables"].items())},
        "alphabets_note": ("Tabla de extraccion de la fuente de cada pantalla con "
                           "texto (las pantallas 0-2 usan 'alphabet')."),
        "messages": screen_msgs,
    }

    # --- Bloque crawl (stream de bigramas del banco 5) ---
    table3 = load_tbl(os.path.join(HERE, TBL_EXTRACT3))
    crawl_msgs, crawl_used = crawl_extract(data, table3)
    blocks[CRAWL["name"]] = {
        "text_address": addr(cpu_to_prg(CRAWL["row_start"])),
        "pointer_address": None,
        "method": "bigram_stream",
        "note": CRAWL["note"],
        "dictionary": {
            "address": addr(cpu_to_prg(CRAWL["dictionary"])),
            "stride": CRAWL["dict_stride"],
            "entries": 256,
        },
        "cells_per_row": CRAWL["cells"],
        "dictionary_indices_used": sorted(crawl_used),
        "messages": crawl_msgs,
    }

    total = sum(len(b["messages"]) for b in blocks.values())
    out = {
        "schema": 1,
        "comment": ("Textos extraidos de '%s' con extract_all.py. "
                    "<nl> = salto de linea (0x00), 0xFF = fin de bloque, "
                    "[HH] = byte sin traduccion en main_extract.tbl. Editar "
                    "'translated' en texts_translated.json." % ROM_NAME),
        "blocks": blocks,
    }

    payload = json.dumps(out, ensure_ascii=False, indent=2)
    with open(os.path.join(HERE, OUT_TEXTS), "w", encoding="utf-8") as fh:
        fh.write(payload + "\n")

    # Aviso: bloques que siguen en texts_translated.json pero ya no se extraen
    # (p. ej. el antiguo bloque 'intro', que era en realidad el flujo comprimido
    # de las pantallas 0/1 y se sustituyo por 'screens').
    tr_old = os.path.join(HERE, OUT_TRANSLATED)
    obsoletos = []
    if os.path.exists(tr_old):
        with open(tr_old, "r", encoding="utf-8") as fh:
            obsoletos = [n for n in json.load(fh)["blocks"] if n not in blocks]
    if obsoletos:
        print("  AVISO: %s conserva bloques que ya no se extraen: %s"
              % (OUT_TRANSLATED, ", ".join(obsoletos)))
        print("         (borralos a mano si no los quieres conservar)")

    # texts_translated.json es la copia de trabajo con las traducciones: no se
    # sobreescribe si ya existe (para no perder el trabajo de traduccion). Si
    # aparece un bloque nuevo, se anade con translated = original; los mensajes
    # que ya no se extraen (p. ej. las pantallas de graficos del bloque
    # 'screens') se eliminan, y los metadatos del bloque se refrescan.
    tr_path = os.path.join(HERE, OUT_TRANSLATED)
    added = []
    pruned = {}
    if not os.path.exists(tr_path):
        with open(tr_path, "w", encoding="utf-8") as fh:
            fh.write(payload + "\n")
        created = True
        added = list(blocks)
    else:
        created = False
        with open(tr_path, "r", encoding="utf-8") as fh:
            tr_doc = json.load(fh)
        changed = False
        for name, block in blocks.items():
            tr_block = tr_doc["blocks"].get(name)
            if tr_block is None:
                tr_doc["blocks"][name] = block
                added.append(name)
                changed = True
                continue
            # metadatos del bloque al dia (los mensajes NO se tocan)
            for k, v in block.items():
                if k != "messages" and tr_block.get(k) != v:
                    tr_block[k] = v
                    changed = True
            gone = [k for k in tr_block["messages"] if k not in block["messages"]]
            for k in gone:
                del tr_block["messages"][k]
            if gone:
                pruned[name] = sorted(gone, key=lambda s: int(s))
                changed = True
        if changed:
            with open(tr_path, "w", encoding="utf-8") as fh:
                fh.write(json.dumps(tr_doc, ensure_ascii=False, indent=2) + "\n")

    print("extract_all: %d mensajes en %d bloques" % (total, len(blocks)))
    for name, block in blocks.items():
        print("  %-14s %3d mensajes" % (name, len(block["messages"])))
    print("  (bloque 'screens': %d pantallas de %d bytes validadas; con texto: %s)"
          % (screens_validated, SCREENS["size"],
             ", ".join(str(i) for i in SCREENS["text_screens"])))
    for name, keys in pruned.items():
        print("  AVISO: %s: mensajes que ya no se extraen y se han eliminado "
              "de %s: %s" % (name, OUT_TRANSLATED, ", ".join(keys)))
    if created:
        print("  -> %s (y copia nueva %s)" % (OUT_TEXTS, OUT_TRANSLATED))
    elif added:
        print("  -> %s (%s: bloques nuevos %s)"
              % (OUT_TEXTS, OUT_TRANSLATED, ", ".join(added)))
    else:
        print("  -> %s (%s conservado)" % (OUT_TEXTS, OUT_TRANSLATED))


if __name__ == "__main__":
    main()
