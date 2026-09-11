#!/usr/bin/env python3
"""Insert ES translations from tr_text.json into the High Seas Havoc ROM.

Self-contained. Run from repo root:
    python tools/insert_all.py
Output: High Seas Havoc (USA) (En,Ja) ES.md
"""

import json
import os
import sys

sys.stdout.reconfigure(encoding="utf-8", errors="replace")

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "High Seas Havoc (USA) (En,Ja).md")
OUT = os.path.join(ROOT, "TR_High Seas Havoc (USA) (En,Ja).md")
JSON = os.path.join(ROOT, "tr_text.json")

# ---------------------------------------------------------------------------
# LZ (mirror of the game decompressor at 0x1AAC)
# ---------------------------------------------------------------------------

def lz_decode(data):
    out = bytearray()
    pos = 2
    d7 = (data[0] << 8) | data[1]
    guard = 0
    while d7 > 0 and guard < 200000:
        d1 = data[pos]
        pos += 1
        d6 = 7
        while d6 >= 0 and d7 > 0:
            if d1 & (1 << d6):
                control = data[pos]
                nxt = data[pos + 1]
                pos += 2
                c32 = control & 0x3F
                v = ((control >> 6) << 8) | nxt
                dist = 0x400 - v
                if dist <= 0:
                    dist = 1
                if dist > len(out):
                    dist = len(out)
                for _ in range(c32 + 2):
                    if dist > 0:
                        out.append(out[len(out) - dist])
                    else:
                        out.append(0)
                d7 -= c32 + 2
            else:
                out.append(data[pos])
                pos += 1
                d7 -= 1
            d6 -= 1
            guard += 1
    return bytes(out), pos, d7


def _longest_match(data, pos, max_len, max_dist=0x3FF):
    """Exhaustive greedy longest-match (ties -> smallest distance). This fits
    the intro font in its original 370-byte slot (369 bytes) and keeps the
    intro text recompression under its 9993-byte budget (~1 s)."""
    best_len = 0
    best_dist = 0
    lo = max(0, pos - max_dist)
    for dist in range(1, pos - lo + 1):
        ln = 0
        while ln < max_len and data[pos - dist + ln] == data[pos + ln]:
            ln += 1
        if ln > best_len:
            best_len = ln
            best_dist = dist
            if ln == max_len:
                break
    return best_len, best_dist


def lz_encode(data):
    n = len(data)
    decisions = []
    pos = 0
    while pos < n:
        max_len = min(65, n - pos)
        ln, dist = _longest_match(data, pos, max_len)
        if ln >= 3:
            decisions.append((1, dist, ln))
            pos += ln
        else:
            decisions.append((0, data[pos]))
            pos += 1
    out = bytearray()
    out += (n & 0xFFFF).to_bytes(2, "big")
    gi = 0
    nd = len(decisions)
    while gi < nd:
        flag = 0
        group_len = min(8, nd - gi)
        for bit in range(group_len):
            if decisions[gi + bit][0]:
                flag |= 1 << (7 - bit)
        out.append(flag)
        for bit in range(group_len):
            d = decisions[gi + bit]
            if d[0] == 0:
                out.append(d[1])
            else:
                dist, length = d[1], d[2]
                c32 = length - 2
                v = 0x400 - dist
                control = (((v >> 8) & 0x3) << 6) | (c32 & 0x3F)
                out.append(control)
                out.append(v & 0xFF)
        gi += 8
    return bytes(out)


# ---------------------------------------------------------------------------
# Encoding helpers
# ---------------------------------------------------------------------------

STORY_TBL = os.path.join(ROOT, "story_insert.tbl")
OTHER_TBL = os.path.join(ROOT, "other_insert.tbl")


def build_map(tbl_path):
    """tbl -> {char: byte}. story_insert.tbl keeps accent glyph bytes
    (0x23-0x2B, intro font); other_insert.tbl de-accents to plain ASCII."""
    m = {}
    for raw in open(tbl_path, encoding="utf-8"):
        line = raw.rstrip("\r\n")
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, val = line.split("=", 1)
        try:
            b = int(key, 16)
        except ValueError:
            continue
        m[val] = b
    return m


def encode_ascii(text, m):
    out = bytearray()
    i = 0
    while i < len(text):
        if text.startswith("[LF]", i):
            out.append(m["[LF]"])
            i += 4
        elif text.startswith("[END]", i):
            out.append(m["[END]"])
            i += 5
        else:
            c = text[i]
            if c not in m:
                print("  !! no mapping for %r" % c)
                c = "?"
            out.append(m[c])
            i += 1
    return out


# ---------------------------------------------------------------------------
# Block writers
# ---------------------------------------------------------------------------

def write_intro(rom, blk):
    """story: the intro pages live INSIDE the font LZ block at 0x0A08B8
    (decompressed to 15318 bytes). Text starts at decompressed offset 0x2B0A:
    16 pages of 0xA4 with LF@38/79/120 and END@161. Recompress the whole font
    block in place (budget = original 9993 compressed bytes) and pad the gap."""
    ADDR = 0x0A08B8     # font LZ block
    FONT_END = 0x0A2FC2  # start of the next block
    T = 0x2B0A           # text zone offset in decompressed data
    mp = build_map(STORY_TBL)
    old_enc = bytes(rom[ADDR:FONT_END])
    dec, used, _ = lz_decode(old_enc)
    if len(dec) < T + 16 * 0xA4:
        raise SystemExit("font dec too short: %d" % len(dec))
    msgs = blk["messages"]
    pages = len(msgs)
    for i in range(pages):
        t = msgs[str(i)]["translated"]
        rows = [p.replace("[END]", "") for p in t.split("[LF]")]
        if len(rows) != 4:
            raise SystemExit("intro %d: %d rows, need 4" % (i, len(rows)))
        page = bytearray([0x20]) * 0xA4
        # row0 (38 B, no leading spaces), rows 1-3 (40 B, with 2 leading spaces)
        r0 = rows[0]
        if r0.startswith("  "):
            r0 = r0[2:]
        r0 = r0[:38].ljust(38)
        page[0:38] = encode_ascii(r0, mp)
        page[38] = 0x80
        for j in range(3):
            r = rows[1 + j]
            if not r.startswith("  "):
                r = "  " + r
            r = r[:40].ljust(40)
            page[39 + j * 41:39 + j * 41 + 40] = encode_ascii(r, mp)
            if j < 2:
                page[39 + j * 41 + 40] = 0x80
        page[161] = 0xFF
        # Preserve the original non-text tail (offsets 0xA2-0xA3, after the
        # END marker): the last page originally ends "FF 00 00" and the story
        # reads its backdrop palette from decompressed offset 0x3548 (page 15
        # tail + font data). Padding those bytes with 0x20 made the backdrop
        # fade to green 0x2020.
        dst = T + i * 0xA4
        page[0xA2:0xA4] = dec[dst + 0xA2:dst + 0xA4]
        dec = dec[:dst] + bytes(page) + dec[dst + 0xA4:]
    new_enc = lz_encode(dec)
    budget = used  # original compressed size of the font block
    if len(new_enc) > budget:
        raise SystemExit(
            "font recompressed %d > budget %d (need relocation)" %
            (len(new_enc), budget))
    rom[ADDR:ADDR + len(new_enc)] = new_enc
    rom[ADDR + len(new_enc):FONT_END] = b"\xFF" * (FONT_END - ADDR - len(new_enc))
    print("  intro: %d pages @font 0x%06X, recompressed %d (budget %d)" %
          (pages, ADDR, len(new_enc), budget))


FONT_GFX = os.path.join(ROOT, "intro_font_mod.gfx")
FONT_ADDR = 0x0A0746      # font LZ block as shipped by the game
FONT_NEXT = 0x0A08B8      # start of the intro text block (in-place budget limit)
FONT_RELOC = 0x0FFCC0     # free space at the end of the 1MB ROM


def write_font(rom):
    """Compress intro_font_mod.gfx (raw 4bpp 8x8 tiles, 32 B each) with the
    game LZ and insert it. If it no longer fits the original slot
    (0x0A0746..0x0A08B8, 370 bytes), relocate it to 0xFFCC0 and repoint the
    story loader's `lea <addr>.l, A0` in $1B46E."""
    gfx = open(FONT_GFX, "rb").read()
    n = len(gfx)
    if n == 0 or n % 32:
        raise SystemExit("intro_font_mod.gfx: %d bytes (must be a multiple of 32)" % n)
    if n > 0xFFFF:
        raise SystemExit("intro_font_mod.gfx too large for the LZ16 header (%d)" % n)
    if n > 0x800:
        print("  !! font %d bytes overflows the VRAM slot at 0xF800 (max 2048)" % n)
    enc = lz_encode(gfx)

    pat = b"\x41\xf9" + FONT_ADDR.to_bytes(4, "big")  # lea $0A0746.l, A0
    idx = rom.find(pat)
    if idx < 0:
        raise SystemExit("font loader lea %s not found in ROM" % pat.hex())
    paddr = idx + 2

    if len(enc) <= FONT_NEXT - FONT_ADDR:
        dest = FONT_ADDR
        end = FONT_NEXT
    else:
        dest = FONT_RELOC
        end = None
    rom[dest:dest + len(enc)] = enc
    if end is not None:
        rom[dest + len(enc):end] = b"\xFF" * (end - dest - len(enc))
    rom[paddr:paddr + 4] = dest.to_bytes(4, "big")
    print("  font: %d B -> 0x%06X (%d B compressed; ptr @0x%06X)" %
          (n, dest, len(enc), paddr))


def write_flat_ff(rom, blk):
    """stage: ASCII strings separated by 0xFF at blk['rom_address']."""
    addr = int(blk["rom_address"], 16)
    msgs = blk["messages"]
    mp = build_map(OTHER_TBL)
    for k in sorted(msgs, key=int):
        t = msgs[k]["translated"]
        b = encode_ascii(t, mp)
        b.append(0xFF)
        off = int(msgs[k]["rom_offset"], 16)
        rom[addr + off:addr + off + len(b)] = b
    print("  flat_ff: %d strings @%06X" % (len(msgs), addr))


def write_menu(rom, blk):
    """merged: 'Nu' header then fixed-width strings written at their offsets.
    Each string is padded to the ORIGINAL string's length (fixed slots)."""
    addr = int(blk["rom_address"], 16)
    msgs = blk["messages"]
    mp = build_map(OTHER_TBL)
    for k in sorted(msgs, key=int):
        t = msgs[k]["translated"]
        orig = msgs[k]["original"]
        b = encode_ascii(t, mp)
        slot = len(orig)
        if len(b) > slot:
            raise SystemExit("menu %s: %d > slot %d" % (k, len(b), slot))
        b = b + b"\x20" * (slot - len(b))
        off = int(msgs[k]["rom_offset"], 16)
        rom[addr + off:addr + off + len(b)] = b
    print("  merged: %d strings @%06X" % (len(msgs), addr))


def write_gameover(rom, blk):
    """gameover: 'Nu' + one 21-byte string slot (original CONTINUEEND+10 filler)."""
    addr = int(blk["rom_address"], 16)
    msgs = blk["messages"]
    SLOT = 21
    mp = build_map(OTHER_TBL)
    for k in sorted(msgs, key=int):
        t = msgs[k]["translated"]
        b = encode_ascii(t, mp)
        if len(b) > SLOT:
            raise SystemExit("gameover %s: %d > slot %d" % (k, len(b), SLOT))
        b = b + b"\x20" * (SLOT - len(b))
        off = int(msgs[k]["rom_offset"], 16)
        rom[addr + off:addr + off + len(b)] = b
    print("  gameover: %d strings @%06X (slot %d)" % (len(msgs), addr, SLOT))


def write_flat_fixed(rom, blk):
    """songs: fixed-size slots (0x1C) at rom_address."""
    addr = int(blk["rom_address"], 16)
    msgs = blk["messages"]
    offs = []
    for k in sorted(msgs, key=int):
        off = int(msgs[k]["rom_offset"], 16)
        offs.append(off)
    step = offs[1] - offs[0] if len(offs) > 1 else 0x1C
    mp = build_map(OTHER_TBL)
    for k in sorted(msgs, key=int):
        t = msgs[k]["translated"]
        b = encode_ascii(t, mp)
        off = int(msgs[k]["rom_offset"], 16)
        slot = bytearray(b) + bytearray(b"\x20" * (step - len(b)))
        rom[addr + off:addr + off + step] = slot
    print("  flat_fixed: %d slots x 0x%X @%06X" % (len(msgs), step, addr))


def recompute_checksum(rom):
    """Sega header checksum: sum of all 16-bit big-endian words from 0x200
    to end of ROM, stored big-endian at 0x18E."""
    total = 0
    for i in range(0x200, len(rom) - 1, 2):
        total += (rom[i] << 8) | rom[i + 1]
    total &= 0xFFFF
    rom[0x18E] = (total >> 8) & 0xFF
    rom[0x18F] = total & 0xFF
    return total


def main():
    tr = json.load(open(JSON, encoding="utf-8"))
    blocks = tr["blocks"]
    rom = bytearray(open(SRC, "rb").read())

    write_font(rom)

    for name in blocks:
        blk = blocks[name]
        method = blk.get("method")
        print("=== %s (%s)" % (name, method))
        if name == "gameover":
            write_gameover(rom, blk)
        elif method == "story":
            write_intro(rom, blk)
        elif method == "flat_ff":
            write_flat_ff(rom, blk)
        elif method == "merged":
            write_menu(rom, blk)
        elif method == "flat_fixed":
            write_flat_fixed(rom, blk)
        else:
            print("  !! unknown method", method)

    cs = recompute_checksum(rom)
    open(OUT, "wb").write(bytes(rom))
    print("\nchecksum @0x18E = %04X" % cs)
    print("Wrote", OUT)


if __name__ == "__main__":
    main()
