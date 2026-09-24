#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
insert_all.py - Shining Force: The Sword of Hajya (Game Gear, USA)
Inserta la traducción (texts_translated.json) en la ROM original:

 1. Convierte cada mensaje traducido a bytes (CHAR_MAP + CTRL_MAP + acentos).
 2. Construye los árboles Huffman semi-adaptativos sobre el texto traducido.
 3. Empaqueta los árboles en huecos libres de la página 0x28000-0x2BFFF.
 4. Escribe la tabla de punteros de árboles (0x2A611, árboles 0x00-0xDB).
 5. Re-codifica los mensajes y los escribe en los bloques T1-T5.
 6. Inserta los glifos acentuados en la fuente (0x28046).
 7. Verifica round-trip con el decoder real y guarda TR_*.gg

Ejecutar desde la raíz del proyecto:
    python insert_all.py
"""

import os
import sys
import json

ROOT = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, ROOT)

import extract_all as ex
import encoder_test as et
from glyphs import GLYPH_BYTES

ROM_IN = os.path.join(ROOT, 'Shining Force - The Sword of Hajya (USA).gg')
ROM_OUT = os.path.join(ROOT, 'TR_Shining Force - The Sword of Hajya (USA).gg')
JSON_IN = os.path.join(ROOT, 'texts_translated.json')
FONT_MOD = os.path.join(ROOT, 'font_mod.gfx')

EOS = 0xDB
PAGE = 0x28000
TREE_TBL = 0x2A611
FONT = 0x28046
FONT_TILES = 0x90
FONT_SIZE = FONT_TILES * 32

TABLES = [
    ("table1", 0x203DE, 0x2135D),
    ("table2", 0x2135D, 0x226E0),
    ("table3", 0x226E0, 0x23B5C),
    ("table4", 0x25284, 0x26581),
    ("table5", 0x26581, 0x26C8E),
]

ACCENTS = {
    '\u00e1': 0x46, '\u00e9': 0x47, '\u00ed': 0x48, '\u00f3': 0x49,
    '\u00fa': 0x4A, '\u00f1': 0x4B, '\u00da': 0x4C, '\u00c9': 0x4D,
    '\u00cd': 0x4E, '\u00bf': 0x4F, '\u00a1': 0x54,
}

char_to_byte = {c: b for b, c in ex.CHAR_MAP.items()}
ctrl_to_byte = {c: b for b, c in ex.CTRL_MAP.items()}

DICT_RE = __import__('re').compile(r"<dict 0x[0-9A-Fa-f]{2}>")


def text_to_bytes(text):
    """Texto traducido -> lista de bytes (con acentos)."""
    out = []
    i = 0
    while i < len(text):
        m = DICT_RE.match(text, i)
        if m:
            out.append(0xDA)
            out.append(int(m.group(0)[8:10], 16))
            i = m.end()
            continue
        if text[i] == '<':
            j = text.index('>', i)
            tok = text[i:j + 1]
            if tok in ctrl_to_byte:
                out.append(ctrl_to_byte[tok])
                i = j + 1
                continue
            raise ValueError('token desconocido: %r' % tok)
        c = text[i]
        if c in char_to_byte:
            out.append(char_to_byte[c])
        elif c in ACCENTS:
            out.append(ACCENTS[c])
        else:
            raise ValueError('carácter sin byte: %r' % c)
        i += 1
    return out


def build_counts(blocks_bytes):
    counts = [[0] * 256 for _ in range(0x100)]
    for blist in blocks_bytes:
        for m in blist:
            prev = EOS
            for b in m:
                counts[prev][b] += 1
                prev = b
    return counts


def pack_trees(trees):
    """Coloca los árboles en huecos de la página 0x28000-0x2BFFF (first-fit).
    Devuelve (ptrs, tree_writes) con ptrs[t] = valor 16 bits (o 0xFFFF),
    y tree_writes = lista de (addr, bytes)."""
    holes = [
        (0x2A7C9, 0x2ACFC),
        (0x2BD54, 0x2BFFF),
    ]
    ptrs = [0xFFFF] * 0x100
    tree_writes = []
    for t in range(0x100):
        tb = et.tree_to_bytes(trees[t])
        if not tb:
            continue
        n_syms = et.count_leaves(trees[t])
        need = len(tb)
        placed = False
        for hi, (hstart, hend) in enumerate(holes):
            if hend - hstart >= need:
                addr = hstart
                holes[hi] = (hstart + need, hend)
                tree_writes.append((addr, bytes(tb)))
                # v apunta al shape (tras los símbolos)
                shape_off = addr + n_syms - PAGE
                ptrs[t] = shape_off + 0x4000
                placed = True
                break
        if not placed:
            raise ValueError('árbol %02X (%d bytes) no cabe en huecos' % (t, need))
    return ptrs, tree_writes


def main():
    with open(JSON_IN, encoding='utf-8') as f:
        jd = json.load(f)

    # 1) convertir mensajes a bytes
    blocks_bytes = []
    for name, addr, end in TABLES:
        blist = []
        for idx in sorted(jd['blocks'][name]['messages'], key=int):
            text = jd['blocks'][name]['messages'][idx]['translated']
            blist.append(text_to_bytes(text))
        blocks_bytes.append(blist)

    # 2) árboles
    counts = build_counts(blocks_bytes)
    trees = [et.build_tree(counts[t]) for t in range(0x100)]

    # 3) empaquetar
    ptrs, tree_writes = pack_trees(trees)
    n_trees = sum(1 for t in range(0x100) if trees[t] is not None)
    total_tree = sum(len(b) for _, b in tree_writes)
    print('Árboles: %d árboles, %d bytes' % (n_trees, total_tree))

    # 4) codificar mensajes y medir
    print('\n%-7s %7s %7s %7s %8s' % ('bloque', 'trad', 'limite', 'libre', '%'))
    encoded = []
    totals = []
    for bi, (blist, (name, addr, end)) in enumerate(zip(blocks_bytes, TABLES)):
        enc_msgs = []
        total = 0
        for m in blist:
            enc = et.encode_msg(m, trees, ptrs)
            if enc is None:
                raise ValueError('mensaje no codificable en %s' % name)
            if len(enc) > 0xFF:
                raise ValueError('mensaje >255 bytes en %s' % name)
            enc_msgs.append(bytes(enc))
            total += 1 + len(enc)
        encoded.append(enc_msgs)
        totals.append(total)
        lim = end - addr
        print('%-7s %7d %7d %7d %7.1f%%' % (name, total, lim, lim - total, 100.0 * total / lim))
        if total > lim:
            raise ValueError('%s desborda el bloque' % name)
    print('TOTAL: %d bytes' % sum(totals))

    # 5) escribir ROM
    rom = bytearray(open(ROM_IN, 'rb').read())

    # árboles
    for addr, tb in tree_writes:
        rom[addr:addr + len(tb)] = tb
    # tabla de punteros (0x00-0xDB): la tabla original ocupa exactamente 0xDC
    # entradas (0x2A611..0x2A7C9), que es donde empiezan los árboles.
    for t in range(0xDC):
        v = ptrs[t]
        rom[TREE_TBL + t * 2] = v & 0xFF
        rom[TREE_TBL + t * 2 + 1] = (v >> 8) & 0xFF

    # mensajes
    for (name, addr, end), enc_msgs in zip(TABLES, encoded):
        p = addr
        for enc in enc_msgs:
            rom[p] = len(enc)
            rom[p + 1:p + 1 + len(enc)] = enc
            p += 1 + len(enc)

    # glifos: si el usuario dejó font_mod.gfx, inserta ese bloque de fuente
    # (tiles 0x00-0x8F); si no, usa la fuente original de la ROM.
    if os.path.exists(FONT_MOD):
        with open(FONT_MOD, 'rb') as f:
            fmod = f.read()
        if len(fmod) != FONT_SIZE:
            raise ValueError(
                'font_mod.gfx debe tener %d bytes (0x%02X tiles), no %d' %
                (FONT_SIZE, FONT_TILES, len(fmod)))
        rom[FONT:FONT + FONT_SIZE] = fmod
        print('Fuente: insertado font_mod.gfx (%d tiles) en 0x%05X' %
              (FONT_TILES, FONT))
    else:
        print('Fuente: no hay font_mod.gfx, se mantiene la fuente original')

    # glifos acentuados: solo en tiles que siguen vacíos (0xFF) para no
    # pisar lo que el usuario haya dibujado en font_mod.gfx.
    for tile, tb in GLYPH_BYTES.items():
        slot = FONT + tile * 32
        if rom[slot:slot + 32] == b'\xFF' * 32:
            rom[slot:slot + 32] = tb
    print('Fuente: glifos acentuados colocados en tiles 0x46-0x4F y 0x54')

    # 6) verificación round-trip con el decoder real (extract_all.decode_string)
    ex.MAX_LEN = 255
    ex.data = bytes(rom)
    print('\nVerificación round-trip:')
    ok = 0
    total = 0
    for (name, addr, end), blist in zip(TABLES, blocks_bytes):
        p = addr
        for i, m in enumerate(blist):
            out, _ = ex.decode_string(p)
            if out is None:
                raise ValueError('decode falló en %s[%d] @0x%05X' % (name, i, p))
            if bytes(out) == bytes(m):
                ok += 1
            else:
                print('  DIFF %s[%d]: %s != %s' % (name, i,
                      bytes(m).hex()[:48], bytes(out).hex()[:48]))
            p += 1 + rom[p]
            total += 1
    print('Round-trip: %d / %d' % (ok, total))

    with open(ROM_OUT, 'wb') as f:
        f.write(bytes(rom))
    print('\nEscrito: %s' % ROM_OUT)
    print('NOTA: el checksum del header GG (0x7FFE) no se ha actualizado; '
          'la mayoría de emuladores no lo verifican.')


if __name__ == '__main__':
    main()
