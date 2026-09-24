#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
extract_all.py - Shining Force: The Sword of Hajya (Game Gear, USA)

Extracts all script text blocks (Huffman-compressed) to texts.json (schema 1).

Run from the project root:
    python extract_all.py
"""

import json
import os

ROM_PATH = "Shining Force - The Sword of Hajya (USA).gg"

TREE_TBL = 0x2A611
PAGE = 0x28000
EOS = 0xDB
MAX_LEN = 100

# Verified character map (Hajya USA)
CHAR_MAP = {
    0x01: ' ',
    0x02: '0', 0x03: '1', 0x04: '2', 0x05: '3', 0x06: '4',
    0x07: '5', 0x08: '6', 0x09: '7', 0x0A: '8', 0x0B: '9',
    0x0C: 'A', 0x0D: 'B', 0x0E: 'C', 0x0F: 'D', 0x10: 'E',
    0x11: 'F', 0x12: 'G', 0x13: 'H', 0x14: 'I', 0x15: 'J',
    0x16: 'K', 0x17: 'L', 0x18: 'M', 0x19: 'N', 0x1A: 'O',
    0x1B: 'P', 0x1C: 'Q', 0x1D: 'R', 0x1E: 'S', 0x1F: 'T',
    0x20: 'U', 0x21: 'V', 0x22: 'W', 0x23: 'X', 0x24: 'Y',
    0x25: 'Z',
    0x26: 'a', 0x27: 'b', 0x28: 'c', 0x29: 'd', 0x2A: 'e',
    0x2B: 'f', 0x2C: 'g', 0x2D: 'h', 0x2E: 'i', 0x2F: 'j',
    0x30: 'k', 0x31: 'l', 0x32: 'm', 0x33: 'n', 0x34: 'o',
    0x35: 'p', 0x36: 'q', 0x37: 'r', 0x38: 's', 0x39: 't',
    0x3A: 'u', 0x3B: 'v', 0x3C: 'w', 0x3D: 'x', 0x3E: 'y',
    0x3F: 'z',
    0x40: ',', 0x41: '.', 0x42: '!', 0x43: "'", 0x44: '(', 0x45: ')',
    0x81: '-', 0x82: '%', 0x83: '/', 0x8E: '?', 0x8F: '\u00b7',
}

# Control codes (0xC8-0xDB). 0xDA is special: followed by a name-dictionary index.
CTRL_MAP = {
    0xC8: '<use dictionary>', 0xC9: '<line>', 0xCB: '<delay 02>',
    0xCC: '<number>', 0xCD: '<name>', 0xCF: '<party leader>',
    0xD1: '<item>', 0xD2: '<spell>', 0xD3: '<class name>',
    0xD4: '<wait more>', 0xD6: '<delay 01>', 0xD7: '<wait>',
    0xD8: '<delay 03>', 0xD9: '<clear screen>', 0xDB: '<end>',
}

# Script table boundaries (confirmed by strict sequential walk).
# pointer_address = where this table's 16-bit pointer lives in the vector table.
# text_address -> verified end (exclusive). T1-T3 are contiguous; T4/T5 are
# contiguous; there is a data gap between T3 (0x23B5C) and T4 (0x25284).
TABLES = [
    {"name": "table1", "text_address": 0x203DE, "text_end": 0x2135D,
     "pointer_address": 0x2000C,
     "note": "T1 - men\\u00fa / escenas de pantalla de pausa (256 mensajes)"},
    {"name": "table2", "text_address": 0x2135D, "text_end": 0x226E0,
     "pointer_address": 0x2000E,
     "note": "T2 - di\\u00e1logos del arco inicial (256 mensajes)"},
    {"name": "table3", "text_address": 0x226E0, "text_end": 0x23B5C,
     "pointer_address": 0x20010,
     "note": "T3 - di\\u00e1logos intermedios (256 mensajes)"},
    {"name": "table4", "text_address": 0x25284, "text_end": 0x26581,
     "pointer_address": 0x2401C,
     "note": "T4 - di\\u00e1logos del arco final (256 mensajes)"},
    {"name": "table5", "text_address": 0x26581, "text_end": 0x26C8E,
     "pointer_address": 0x2401E,
     "note": "T5 - final / cr\\u00e9ditos (79 mensajes)"},
]

data = None


def get_tree_ptr(tree):
    v = data[TREE_TBL + tree * 2] | (data[TREE_TBL + tree * 2 + 1] << 8)
    if v == 0xFFFF:
        return None
    return v - 0x4000


def decode_string(pos):
    length = data[pos]
    if length == 0 or length > MAX_LEN:
        return None, pos
    pos += 1
    bits = 8
    barrel = data[pos]; pos += 1; length -= 1
    tree = EOS
    out = []
    guard = 0
    while True:
        guard += 1
        if guard > 500:
            return None, pos
        page_off = get_tree_ptr(tree)
        if page_off is None:
            return None, pos
        shape_pos = PAGE + page_off
        symbol_ptr = shape_pos - 1
        tree_bits = 8
        tree_barrel = data[shape_pos]; shape_pos += 1
        while (tree_barrel & 0x80) == 0:
            tree_barrel = (tree_barrel << 1) & 0xFF
            tree_bits -= 1
            if tree_bits == 0:
                tree_bits = 8
                tree_barrel = data[shape_pos]; shape_pos += 1
            if bits == 0:
                if length <= 0:
                    return None, pos
                bits = 8
                barrel = data[pos]; pos += 1; length -= 1
            if (barrel & 0x80) != 0:
                skip = 1
                while skip:
                    if (tree_barrel & 0x80) == 0:
                        skip += 1
                    else:
                        skip -= 1
                        symbol_ptr -= 1
                    tree_barrel = (tree_barrel << 1) & 0xFF
                    tree_bits -= 1
                    if tree_bits == 0:
                        tree_bits = 8
                        tree_barrel = data[shape_pos]; shape_pos += 1
            barrel = (barrel << 1) & 0xFF
            bits -= 1
        symbol = data[symbol_ptr]
        out.append(symbol)
        tree = symbol
        if tree == EOS:
            break
    if any(b > EOS for b in out):
        return None, pos
    return out, pos


def to_text(out):
    """Convert decoded symbol list to text.

    0xDA is a name-dictionary reference: the following symbol byte is a
    dictionary index (0x00-0x17). Emit it as <dict 0xNN> so the exact byte
    sequence round-trips.
    """
    parts = []
    i = 0
    while i < len(out):
        b = out[i]
        if b == 0xDA and i + 1 < len(out):
            parts.append('<dict 0x%02X>' % out[i + 1])
            i += 2
            continue
        if b in CHAR_MAP:
            parts.append(CHAR_MAP[b])
        elif b in CTRL_MAP:
            parts.append(CTRL_MAP[b])
        else:
            parts.append('[%02X]' % b)
        i += 1
    return ''.join(parts)


def walk_table(text_address, end):
    """Strict sequential walk: strings are length-prefixed, one pad byte each."""
    strings = []
    p = text_address
    while p < end:
        out, npos = decode_string(p)
        if out is None:
            raise ValueError('decode failed at 0x%05X' % p)
        strings.append((p, out))
        p = npos + 1
    if p != end:
        raise ValueError('table does not end at boundary: 0x%05X != 0x%05X' % (p, end))
    return strings


def load_rom():
    global data
    with open(ROM_PATH, 'rb') as f:
        data = f.read()


def main():
    load_rom()

    texts = {
        "schema": 1,
        "comment": "Textos extra\\u00eddos de Shining Force - The Sword of Hajya (USA).gg. "
                   "Bloques T1-T5 (script Huffman). Control: <line>, <wait>, <end>, etc. "
                   "Referencias de nombre din\\u00e1mico: <dict 0xNN> (no traducir).",
        "blocks": {},
    }

    totals = {}
    for tbl in TABLES:
        strings = walk_table(tbl["text_address"], tbl["text_end"])

        messages = {}
        for seq, (pos, out) in enumerate(strings):
            messages[str(seq)] = {
                "text_offset": "0x%06X" % pos,
                "pointer_offset": "0x%04X" % seq,
                "original": to_text(out),
                "translated": "",
            }

        texts["blocks"][tbl["name"]] = {
            "text_address": "0x%06X" % tbl["text_address"],
            "pointer_address": "0x%06X" % tbl["pointer_address"],
            "method": "huffman_script",
            "note": tbl["note"],
            "messages": messages,
        }
        totals[tbl["name"]] = len(strings)

    with open('texts.json', 'w', encoding='utf-8') as f:
        json.dump(texts, f, ensure_ascii=False, indent=2)

    for name, n in totals.items():
        print('%s: %d mensajes' % (name, n))
    print('Total: %d mensajes' % sum(totals.values()))
    print('Generado: texts.json')


if __name__ == '__main__':
    main()
