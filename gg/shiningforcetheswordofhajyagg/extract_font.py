#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
extract_font.py - Shining Force: The Sword of Hajya (Game Gear, USA)

Extrae la fuente (tiles 8x8 4bpp, 32 bytes/tile) a font.gfx para poder
modificarla. El juego indexa la fuente por byte de carácter (0x00-0x8F), así
que el bloque extraído cubre 0x90 tiles = 0x1200 bytes en 0x28046.

  - La fuente base ocupa los tiles 0x00-0x45 (espacio, dígitos, A-Z, a-z,
    puntuación) y 0x81-0x8F (puntuación: - % / ? ·).
  - Los tiles 0x46-0x4F y 0x54 están vacíos en la ROM original: ahí
    insert_all.py coloca los glifos acentuados (á é í ó ú ñ Ú É Í ¿ ¡).
  - Los tiles 0x50-0x53 y 0x7C-0x80 contienen otros datos de fuente.

Uso:
    python extract_font.py            -> genera font.gfx
    (editar font.gfx con un editor de tiles 8x8)
    copy font.gfx font_mod.gfx        -> insert_all.py usa font_mod.gfx si existe
"""

import os

ROOT = os.path.dirname(os.path.abspath(__file__))
ROM_IN = os.path.join(ROOT, 'Shining Force - The Sword of Hajya (USA).gg')
GFX_OUT = os.path.join(ROOT, 'font.gfx')

FONT = 0x28046
TILES = 0x90          # 0x00-0x8F, 32 bytes por tile
FONT_SIZE = TILES * 32


def main():
    with open(ROM_IN, 'rb') as f:
        data = f.read()
    block = data[FONT:FONT + FONT_SIZE]
    assert len(block) == FONT_SIZE, 'bloque de fuente incompleto'
    with open(GFX_OUT, 'wb') as f:
        f.write(block)
    print('Fuente extraída: %s (%d tiles, %d bytes @ 0x%05X)' % (
        GFX_OUT, TILES, FONT_SIZE, FONT))
    print('Modifícala y guárdala como font_mod.gfx; insert_all.py la insertará.')


if __name__ == '__main__':
    main()
