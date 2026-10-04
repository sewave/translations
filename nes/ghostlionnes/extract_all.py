import json
import os

HERE = os.path.dirname(os.path.abspath(__file__))
ROM = os.path.join(HERE, 'Ghost Lion (USA).nes')
TBL = os.path.join(HERE, 'ghostlionnes_extract.tbl')
data = open(ROM, 'rb').read()

def bank(addr):
    if 0x8000 <= addr <= 0xBFFF: return 0x10 + 0x4000*0 + (addr-0x8000)  # bank0
    if 0xC000 <= addr <= 0xFFFF: return 0x10 + 0x4000*7 + (addr-0xC000)  # fixed last
    raise ValueError(hex(addr))

def rb_b3(addr): return data[0x10 + 0x4000*3 + (addr - 0x8000)]
def rb_b4(addr): return data[0x10 + 0x4000*4 + (addr - 0x8000)]
def rb_last(addr): return data[0x10 + 0x4000*7 + (addr - 0xC000)]

E230 = [rb_last(0xE230+i) for i in range(0x58)]
E91D = [rb_last(0xE91D+i) for i in range(0x58)]

# glyph -> human-readable text char (loaded from ghostlionnes_extract.tbl)
GLYPH_CHAR = {}
for raw in open(TBL, encoding='utf-8'):
    line = raw.rstrip('\r\n')
    if not line.strip() or line.strip().startswith('#'):
        continue
    hx, _, ch = line.partition('=')
    GLYPH_CHAR[int(hx.strip(), 16)] = ch
# E230 index -> glyph is the real "code space"; build map index->char
E230_CHAR = [GLYPH_CHAR.get(g, '[%02X]'%g) for g in E230]

def stream_read(data_slice):
    out = []
    p = 0
    cur = 0
    bit = 0
    def rbit():
        nonlocal cur, bit, p
        if bit == 0:
            cur = data_slice[p] if p < len(data_slice) else 0xFF
            p += 1
            bit = 8
        bit -= 1
        return (cur >> bit) & 1
    def align():
        nonlocal bit, cur
        if bit != 0:
            bit = 0
            cur = 0
    while True:
        x = 0
        while rbit() == 0:
            x += 1
            if x > 20:
                return out, p, True
        v = 0
        for _ in range(3):
            v = (v << 1) | rbit()
        code = (x << 3) | v
        y = E91D[code] if code < len(E91D) else 0
        res = E230[y] if y < 0x58 else 0
        if res == 0x12:
            align()
            a = 0
            for _ in range(8):
                a = (a << 1) | rbit()
            b = 0
            for _ in range(8):
                b = (b << 1) | rbit()
            out.append(('NAME', a, b))
            continue
        if res == 0x00:
            rb = 0
            for _ in range(8):
                rb = (rb << 1) | rbit()
            out.append(('RAW', rb))
            continue
        if res in (0x01, 0x02, 0x03, 0x04, 0x05, 0x12, 0x22, 0x27, 0x28, 0x29):
            align()
            a = 0
            for _ in range(8):
                a = (a << 1) | rbit()
            b = 0
            for _ in range(8):
                b = (b << 1) | rbit()
            out.append(('LIT', res, a, b))
            continue
        if res in (0x00, 0x06, 0x07, 0x13):
            align()
            a = 0
            for _ in range(8):
                a = (a << 1) | rbit()
            out.append(('LIT', res, a))
            continue
        out.append(res)
        if res in (0x0F, 0xFF):
            return out, p, False

def decode_msg(bank_reader, ptr, cap=0x200):
    seg = bytes(bank_reader(ptr + i) for i in range(cap))
    toks, used, overrun = stream_read(seg)
    return toks, used, overrun

def ptr_table(bank_reader, addr, n):
    return [bank_reader(addr+2*i) | (bank_reader(addr+2*i+1)<<8) for i in range(n)]

def render(toks):
    out = []
    for t in toks:
        if isinstance(t, tuple):
            if t[0] == 'NAME':
                out.append('[name]{%02X:%02X}' % (t[1], t[2]))
            elif t[0] == 'RAW':
                out.append('[raw:%02X]' % t[1])
            elif t[0] == 'LIT':
                if len(t) == 4:
                    out.append('[%02X:%02X %02X]' % t[1:])
                else:
                    out.append('[%02X:%02X]' % (t[1], t[2]))
            continue
        out.append(GLYPH_CHAR.get(t, '[%02X]' % t))
    return ''.join(out)

blocks = {}

# Block 1: bank4 $9000 table (ids 0x00-0x7F)  -> message ids 0-127
ptrs = ptr_table(rb_b4, 0x9000, 0x80)
msgs = {}
for i in range(0x80):
    toks, used, over = decode_msg(rb_b4, ptrs[i])
    msgs[str(i)] = {
        "text_offset": "0x%04X" % ptrs[i],
        "pointer_offset": "0x%04X" % (0x9000 + 2*i),
        "original": render(toks),
    }
blocks["bank4_9000"] = {
    "text_address": "0x9000(b4)",
    "pointer_address": "0x9000",
    "method": "e1f9_huffman",
    "note": "battle/dialogue messages, bank4 table at $9000",
    "messages": msgs,
}

# Block 2: bank4 $9100 table (ids 0x80-0xBF) -> ids 0-63 (offset by 0x80)
ptrs = ptr_table(rb_b4, 0x9100, 0x40)
msgs = {}
for i in range(0x40):
    toks, used, over = decode_msg(rb_b4, ptrs[i])
    msgs[str(i)] = {
        "text_offset": "0x%04X" % ptrs[i],
        "pointer_offset": "0x%04X" % (0x9100 + 2*i),
        "original": render(toks),
    }
blocks["bank4_9100"] = {
    "text_address": "0x9100(b4)",
    "pointer_address": "0x9100",
    "method": "e1f9_huffman",
    "note": "battle/dialogue messages, bank4 table at $9100 (msg id = 0x80+i)",
    "messages": msgs,
}

# Block 3: bank3 $A000 table (story/NPC dialogue)
ptrs = ptr_table(rb_b3, 0xA000, 0x40)
msgs = {}
for i in range(0x40):
    toks, used, over = decode_msg(rb_b3, ptrs[i])
    msgs[str(i)] = {
        "text_offset": "0x%04X" % ptrs[i],
        "pointer_offset": "0x%04X" % (0xA000 + 2*i),
        "original": render(toks),
    }
blocks["bank3_A000"] = {
    "text_address": "0xA000(b3)",
    "pointer_address": "0xA000",
    "method": "e1f9_huffman",
    "note": "story/NPC dialogue, bank3 table at $A000",
    "messages": msgs,
}

# Block 3b: bank3 $A080 table (villager info, 0x1C messages)
ptrs = ptr_table(rb_b3, 0xA080, 0x1C)
msgs = {}
for i in range(0x1C):
    toks, used, over = decode_msg(rb_b3, ptrs[i])
    msgs[str(i)] = {
        "text_offset": "0x%04X" % ptrs[i],
        "pointer_offset": "0x%04X" % (0xA080 + 2*i),
        "original": render(toks),
    }
blocks["bank3_A080"] = {
    "text_address": "0xA080(b3)",
    "pointer_address": "0xA080",
    "method": "e1f9_huffman",
    "note": "bank3 secondary tables: villager info, table at $A080 (28 msgs)",
    "messages": msgs,
}

# Block 3c: bank3 $A0B8 table (villager events, 0x24 messages)
ptrs = ptr_table(rb_b3, 0xA0B8, 0x24)
msgs = {}
for i in range(0x24):
    toks, used, over = decode_msg(rb_b3, ptrs[i])
    msgs[str(i)] = {
        "text_offset": "0x%04X" % ptrs[i],
        "pointer_offset": "0x%04X" % (0xA0B8 + 2*i),
        "original": render(toks),
    }
blocks["bank3_A0B8"] = {
    "text_address": "0xA0B8(b3)",
    "pointer_address": "0xA0B8",
    "method": "e1f9_huffman",
    "note": "bank3 secondary tables: villager events, table at $A0B8 (36 msgs)",
    "messages": msgs,
}

# Block 4: bank4 $9180 table (ids 0xC0-0xFF) -> ids 0-63 (offset by 0xC0).
# Reached by the CF3A loader: entry = (msg_id - 0x80)*2, so ids 0xC0-0xFF
# read $9180-0x91FF. Field menu is id 0xC0 -> $9180.
ptrs = ptr_table(rb_b4, 0x9180, 0x40)
msgs = {}
for i in range(0x40):
    toks, used, over = decode_msg(rb_b4, ptrs[i])
    msgs[str(i)] = {
        "text_offset": "0x%04X" % ptrs[i],
        "pointer_offset": "0x%04X" % (0x9180 + 2*i),
        "original": render(toks),
    }
blocks["bank4_9180"] = {
    "text_address": "0x9180(b4)",
    "pointer_address": "0x9180",
    "method": "e1f9_huffman",
    "note": "field/battle menus, bank4 table at $9180 (msg id = 0xC0+i)",
    "messages": msgs,
}

# Block 5: bank4 $B800 name table (plain glyph bytes, fixed 8-byte slots).
# Real names only occupy slots 0x00-0x8B: items 0x00-0x2B, enemies 0x31-0x58,
# spells 0x59-0x70, characters/races 0x80-0x8B (gaps 0x2C-0x30 and 0x71-0x7F
# are empty FF). Slots 0x8C-0xFF are NOT text: they are binary data (enemy stat
# tables, attack values, BE/00 pointers) and are excluded from extraction.
# A name is drawn from slot address = id*8 + $B800, up to 8 glyphs,
# FF-terminated. 0xB0 = space.
NAME_GLYPH = dict(GLYPH_CHAR)
NAME_GLYPH[0xB0] = ' '
def decode_name(addr, cap=8):
    out = []
    for k in range(cap):
        b = rb_b4(addr + k)
        if b == 0xFF:
            break
        out.append(NAME_GLYPH.get(b, '[%02X]' % b))
    return ''.join(out)

msgs = {}
for i in range(0x8C):
    a = 0xB800 + i*8
    msgs[str(i)] = {
        "text_offset": "0x%04X" % a,
        "pointer_offset": "0x%04X" % a,
        "original": decode_name(a),
    }
blocks["bank4_B800"] = {
    "text_address": "0xB800(b4)",
    "pointer_address": "0xB800",
    "method": "plain_glyphs_8byte",
    "note": "item (0x00-0x2B) / enemy (0x31-0x58) / spell (0x59-0x70) / "
           "character-race (0x80-0x8B) names, bank4 fixed 8-byte slots "
           "(name id = slot index, addr = id*8+$B800, max 8 glyphs). "
           "Slots 0x8C-0xFF are binary data (not text) and are NOT extracted.",
    "messages": msgs,
}

out = {
    "schema": 1,
    "comment": "Legend of the Ghost Lion (USA) text extraction. Encoding: E1F9 bit-coded, E230 glyph map.",
    "blocks": blocks,
}

with open('texts.json', 'w', encoding='utf-8') as f:
    json.dump(out, f, ensure_ascii=False, indent=2)

print('texts.json written.')
for name, blk in blocks.items():
    print('%s: %d messages' % (name, len(blk['messages'])))
    # print first 3
    for k in list(blk['messages'])[:3]:
        m = blk['messages'][k]
        print('  [%s] %s' % (k, m['original'][:90]))
