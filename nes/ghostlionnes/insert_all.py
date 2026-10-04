import json
import sys
import os

HERE = os.path.dirname(os.path.abspath(__file__))
ROM = os.path.join(HERE, 'Ghost Lion (USA).nes')
TR = os.path.join(HERE, 'TR_Ghost Lion (USA).nes')
TRJSON = os.path.join(HERE, 'texts_translated.json')
FALLBACK = os.path.join(HERE, 'texts.json')
EXTRACT_TBL = os.path.join(HERE, 'ghostlionnes_extract.tbl')
INSERT_TBL = os.path.join(HERE, 'ghostlionnes_insert.tbl')
INSERT_BASE_TBL = os.path.join(HERE, 'ghostlionnes_insert_base.tbl')

def rb_last(addr): return data[0x10 + 0x4000*7 + (addr - 0xC000)]

def _load_tbl(path, hexleft=True):
    m = {}
    for raw in open(path, encoding='utf-8'):
        line = raw.rstrip('\r\n')
        if not line.strip() or line.strip().startswith('#'):
            continue
        a, _, b = line.partition('=')
        if hexleft:
            m[int(a.strip(), 16)] = b
        else:
            m[a] = int(b.strip(), 16)
    return m

# glyph byte -> text char (decode/render), from extract tbl
GLYPH_CHAR = _load_tbl(EXTRACT_TBL, hexleft=True)
# insert tbl (with accents mapped to base glyphs for efficient encoding)
def _load_insert_tbl(path):
    m = {}
    for raw in open(path, encoding='utf-8'):
        line = raw.rstrip('\r\n')
        if not line.strip() or line.strip().startswith('#'):
            continue
        hx, _, ch = line.partition('=')
        m[ch] = int(hx.strip(), 16)
    return m
CHAR2GLYPH_ACCENT = _load_insert_tbl(INSERT_TBL)
CHAR2GLYPH_BASE = _load_insert_tbl(INSERT_BASE_TBL)
CHAR2GLYPH = CHAR2GLYPH_ACCENT  # default

# Control glyphs that must keep their indices (decoder has hardcoded checks)
CONTROL_GLYPHS = {
    0x00: 'raw', 0x01: 'c0', 0x02: 'c1', 0x03: 'c2', 0x04: 'c3', 0x05: 'c3',
    0x0C: 'page', 0x0D: 'nl', 0x0F: 'end', 0x12: 'name',
    0x13: 'raw1', 0x20: 'a1', 0x21: 'a2', 0x22: 'a3',
    0x25: 'k1', 0x26: 'k2', 0x27: 'k3',
    0x77: 'cross', 0xFF: 'end2',
}

def glyph_index(g):
    for i, v in enumerate(E230):
        if v == g:
            return i
    return None

def code_for_index(i):
    for c, y in enumerate(E91D):
        if y == i:
            return c
    return None

INDEX2GLYPH = None
CODE2IDX = None

def build_spanish_huffman(tr):
    """Use original patch approach - only patch 9 accented chars."""
    return None, None

def patch_spanish_huffman(data, tr):
    """Use original patch_huffman_tables - only patch 9 accented chars."""
    patch_huffman_tables(data)
    h = 0x10 + 0x4000 * 7
    e230_off = h + (0xE230 - 0xC000)
    e91d_off = h + (0xE91D - 0xC000)
    E230_ENC = [data[e230_off + i] for i in range(0x58)]
    E91D_ENC = [data[e91d_off + i] for i in range(0x58)]
    print('[huffman] patched 9 accented chars only (original approach)')
    return E230_ENC, E91D_ENC

def patch_huffman_tables(data):
    h = 0x10 + 0x4000 * 7
    e230_off = h + (0xE230 - 0xC000)
    e91d_off = h + (0xE91D - 0xC000)
    new_glyphs = [0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98]
    new_indices = list(range(0x40, 0x49))
    for idx, g in zip(new_indices, new_glyphs):
        data[e230_off + idx] = g
    unused_codes = [0x37, 0x3A, 0x3D, 0x40, 0x43, 0x46, 0x49, 0x4C, 0x4F]
    for code, idx in zip(unused_codes, new_indices):
        data[e91d_off + code] = idx
    print('[huffman] patched E230 indices 40-48 <- 90-98, E91D codes 37/3A/3D/40/43/46/49/4C/4F <- 40-48')

def build_maps():
    global INDEX2GLYPH, CODE2IDX, INDEX2GLYPH_DEC, CODE2IDX_DEC
    INDEX2GLYPH = {i: E230[i] for i in range(0x58)}
    CODE2IDX = {c: E91D[c] for c in range(0x58)}
    INDEX2GLYPH_DEC = {i: E230_DEC[i] for i in range(0x58)}
    CODE2IDX_DEC = {c: E91D_DEC[c] for c in range(0x58)}

class Decoder:
    def __init__(self, seg):
        self.seg = seg
        self.p = 0
        self.cur = 0
        self.bit = 0
        self.bits = 0
    def rbit(self):
        if self.bit == 0:
            self.cur = self.seg[self.p] if self.p < len(self.seg) else 0xFF
            self.p += 1
            self.bit = 8
        self.bit -= 1
        self.bits += 1
        return (self.cur >> self.bit) & 1
    def align(self):
        if self.bit != 0:
            self.bit = 0
            self.cur = 0
    def raw_byte(self):
        b = 0
        for _ in range(8):
            b = (b << 1) | self.rbit()
        return b

def decode(seg):
    d = Decoder(seg)
    toks = []
    while True:
        x = 0
        while d.rbit() == 0:
            x += 1
            if x > 16:
                return toks, d.p
        v = 0
        for _ in range(3):
            v = (v << 1) | d.rbit()
        code = (x << 3) | v
        y = E91D_DEC[code] if code < 0x58 else 0
        res = E230_DEC[y] if y < 0x58 else 0
        if res in (0x01, 0x02, 0x03, 0x04, 0x05, 0x12, 0x22, 0x27, 0x28, 0x29):
            d.align()
            a = d.raw_byte()
            b = d.raw_byte()
            toks.append((res, a, b))
            continue
        if res in (0x00, 0x06, 0x07, 0x13):
            d.align()
            a = d.raw_byte()
            toks.append((res, a))
            continue
        toks.append(res)
        if res in (0x0F, 0xFF):
            return toks, d.p

def render(toks):
    out = []
    for t in toks:
        if isinstance(t, tuple):
            if t[0] == 0x00:
                out.append('[raw:%02X]' % t[1])
            elif t[0] == 0x12:
                out.append('[name]{%02X:%02X}' % (t[1], t[2]))
            elif len(t) == 3:
                out.append('[%02X:%02X %02X]' % t)
            else:
                out.append('[%02X:%02X]' % t)
        else:
            ix = glyph_index(t)
            if ix is not None:
                out.append(GLYPH_CHAR.get(E230[ix], '[%02X]' % t))
            else:
                out.append(GLYPH_CHAR.get(t, '[%02X]' % t))
    return ''.join(out)

def bits_of_code(c):
    return ([0] * (c >> 3)) + [1] + [(c >> 2) & 1, (c >> 1) & 1, c & 1]

def encode_toks(toks):
    out = []
    for t in toks:
        if isinstance(t, tuple):
            if t[0] == 'NLM':
                continue
            g = t[0]
            args = t[1:]
            idx = glyph_index(g)
            if idx is None:
                raise ValueError('glyph %02X has no E230 index' % g)
            c = code_for_index(idx)
            if c is None:
                raise ValueError('no encodable code for glyph %02X' % g)
            out.extend(bits_of_code(c))
            while len(out) % 8 != 0:
                out.append(0)
            for a in args:
                out.extend([(a >> (7-k)) & 1 for k in range(8)])
            continue
        idx = glyph_index(t)
        if idx is None:
            raise ValueError('glyph %02X has no E230 index' % t)
        c = code_for_index(idx)
        if c is None:
            raise ValueError('no encodable code for glyph %02X' % t)
        out.extend(bits_of_code(c))
    return out

def parse_tokens(text):
    toks = []
    i = 0
    while i < len(text):
        ch = text[i]
        if ch == '[':
            j = text.find(']', i)
            if j == -1:
                raise ValueError('unterminated [ in text: %s' % text)
            tag = text[i:j+1]
            i = j + 1
        else:
            tag = ch
            i += 1
        if tag.startswith('[name]'):
            if i >= len(text) or text[i] != '{':
                raise ValueError('[name] must be [name]{XX:XX}: %s' % text)
            k = text.find('}', i)
            hexpart = text[i+1:k]
            i = k + 1
            a, b = (int(x, 16) for x in hexpart.split(':'))
            toks.append((0x12, a, b))
        elif tag.startswith('[raw:'):
            toks.append((0x00, int(tag[5:-1], 16)))
        elif tag == '[nlm]':
            toks.append(('NLM',))
        elif tag.startswith('[') and tag.endswith(']') and ':' in tag and tag[-2] != ']':
            base, _, arg = tag[1:-1].partition(':')
            vals = tuple(int(p, 16) for p in arg.split())
            if len(vals) not in (1, 2):
                raise ValueError('bad literal args in %s: %s' % (tag, text))
            g = CHAR2GLYPH.get('[' + base + ']')
            if g is None:
                g = int(base, 16)
                if not (0 <= g <= 0xFF):
                    raise ValueError('unknown token %s in text: %s' % (tag, text))
            toks.append((g,) + vals)
        else:
            g = CHAR2GLYPH.get(tag)
            if g is None:
                inner = tag[1:-1] if (tag.startswith('[') and tag.endswith(']')) else tag
                g = int(inner, 16)
                if not (0 <= g <= 0xFF):
                    raise ValueError('unknown token %s in text: %s' % (tag, text))
            toks.append(g)
    LIT2 = (0x01, 0x02, 0x03, 0x04, 0x05, 0x12, 0x22, 0x27, 0x28, 0x29)
    LIT1 = (0x00, 0x06, 0x07, 0x13)
    grouped = []
    i = 0
    while i < len(toks):
        t = toks[i]
        if isinstance(t, int) and t in LIT2 and i + 2 < len(toks):
            a, b = toks[i + 1], toks[i + 2]
            if isinstance(a, int) and isinstance(b, int):
                grouped.append((t, a, b))
                i += 3
                continue
        if isinstance(t, int) and t in LIT1 and i + 1 < len(toks):
            a = toks[i + 1]
            if isinstance(a, int):
                grouped.append((t, a))
                i += 2
                continue
        grouped.append(t)
        i += 1
    return grouped

def bytes_fit(text):
    toks = parse_tokens(text)
    bits = encode_toks(toks)
    return bits, toks

def bits_of_bytes(seg):
    out = []
    for b in seg:
        for k in range(8):
            out.append((b >> (7-k)) & 1)
    return out

NAME_SPACE = 0xB0

def name_to_glyphs(text):
    out = []
    for ch in text:
        if ch == ' ':
            out.append(NAME_SPACE)
            continue
        g = CHAR2GLYPH.get(ch)
        if g is None:
            raise ValueError('no glyph for char %r in name %r' % (ch, text))
        out.append(g)
    return out

def handle_b800(tr):
    blk = 'bank4_B800'
    if blk not in tr.get('blocks', {}):
        return
    msgs = tr['blocks'][blk]['messages']
    for i in range(0x100):
        m = msgs.get(str(i), {})
        orig_str = m.get('original', '')
        new_str = m.get('translated', '')
        if not new_str or new_str == orig_str:
            continue
        glyphs = name_to_glyphs(new_str)
        if len(glyphs) > 8:
            print('[%s] slot %d: "%s" is %d glyphs, max is 8' %
                  (blk, i, new_str, len(glyphs)))
            sys.exit(1)
        addr = 0xB800 + i*8
        off = H + 0x4000*4 + (addr - 0x8000)
        for k in range(8):
            data[off + k] = glyphs[k] if k < len(glyphs) else 0xFF
    print('[%s] ok (names written in place)' % blk)

def write_bits(bits, bank, addr):
    nbytes = (len(bits) + 7) // 8
    off = H + 0x4000*bank + (addr - 0x8000)
    for k in range(nbytes):
        byte = 0
        for j in range(8):
            ii = k*8 + j
            byte = (byte << 1) | (bits[ii] if ii < len(bits) else 0)
        data[off + k] = byte

def handle_9180(tr, pristine, pool, cursor, cap, H, errors):
    # bank4_9180: messages 0xC0-0xFF.
    # ALL messages re-encoded to pool (A76B-B020).
    # Translated magic menus (48-59): ACCENT; templates: BASE.
    blk = 'bank4_9180'
    if blk not in tr.get('blocks', {}):
        return
    msgs = tr['blocks'][blk]['messages']
    start = cursor
    reemitted = 0
    for i in range(64):
        m = msgs.get(str(i), {})
        ppos = int(m.get('pointer_offset', '0x0'), 16)
        orig_str = m.get('original', '')
        new_str = m.get('translated', '')
        if new_str and new_str != orig_str:
            global CHAR2GLYPH
            CHAR2GLYPH = CHAR2GLYPH_ACCENT
            text_to_encode = new_str
        else:
            CHAR2GLYPH = CHAR2GLYPH_BASE
            text_to_encode = orig_str
        if not text_to_encode:
            addr = 0
        else:
            try:
                bits, _ = bytes_fit(text_to_encode)
            except (ValueError, IndexError) as e:
                errors.append('[%s] msg %d: cannot re-encode text: %s' % (blk, i, e))
                errors.append('    text: %r' % text_to_encode)
                continue
            stream = tuple(bits)
            if stream in pool:
                addr = pool[stream]
            else:
                addr = cursor
                nbytes = (len(bits) + 7) // 8
                if addr + nbytes > cap:
                    print('[%s] OVERFLOW at msg %d: need up to %04X, capacity ends %04X (%d bytes over)' %
                          (blk, i, addr + nbytes, cap, addr + nbytes - cap))
                    sys.exit(1)
                write_bits(bits, 4, addr)
                pool[stream] = addr
                cursor = addr + nbytes
                reemitted += 1
        poff = H + 0x4000*4 + (ppos - 0x8000)
        data[poff] = addr & 0xFF
        data[poff + 1] = (addr >> 8) & 0xFF
    CHAR2GLYPH = CHAR2GLYPH_ACCENT
    print('[%s] ok: %d to pool, bank-4 pool used %04X-%04X = %d bytes (%d%%)' %
          (blk, reemitted, start, cursor - 1, cursor - start, 100*(cursor - start)//(cap - start)))

def main():
    global data, H, E230, E91D, E230_DEC, E91D_DEC, CHAR2GLYPH
    data = bytearray(open(ROM, 'rb').read())
    pristine_orig = bytes(data)
    E230_DEC = [pristine_orig[0x10 + 0x4000*7 + (0xE230 - 0xC000) + i] for i in range(0x58)]
    E91D_DEC = [pristine_orig[0x10 + 0x4000*7 + (0xE91D - 0xC000) + i] for i in range(0x58)]
    path = TRJSON if os.path.exists(TRJSON) else FALLBACK
    tr = json.load(open(path, encoding='utf-8'))
    # Build and patch Spanish Huffman tables
    patch_spanish_huffman(data, tr)
    # Load patched tables for encoding
    E230 = [data[0x10 + 0x4000*7 + (0xE230 - 0xC000) + i] for i in range(0x58)]
    E91D = [data[0x10 + 0x4000*7 + (0xE91D - 0xC000) + i] for i in range(0x58)]
    build_maps()
    pristine = bytes(data)
    path = TRJSON if os.path.exists(TRJSON) else FALLBACK
    tr = json.load(open(path, encoding='utf-8'))
    if path == FALLBACK:
        print('using %s (no translations yet)' % FALLBACK)
    else:
        print('using %s' % TRJSON)

    H = 0x10
    errors = []
    # 9000 + 9100 share pool from 9200 (use ACCENT for prose with accents)
    # 9180 handled separately by handle_9180 (only re-emits goods list 4-8)
    blocks_def = [
        # blk, bank, pta, n, base, use_accent
        ('bank4_9000', 4, 0x9000, 0x80, 0x9200, True),
        ('bank4_9100', 4, 0x9100, 0x40, None, True),
    ]

    pool4 = {}
    cursor4 = 0x9200
    cap4 = 0xAEF3

    for blk, bank, pta, n, base, use_accent in blocks_def:
        global CHAR2GLYPH
        CHAR2GLYPH = CHAR2GLYPH_ACCENT if use_accent else CHAR2GLYPH_BASE
        msgs = tr['blocks'][blk]['messages']
        ptr_positions = []
        streams = []
        valid_indices = []
        for i in range(n):
            m = msgs.get(str(i), {})
            orig_str = m.get('original', '')
            new_str = m.get('translated', orig_str)
            orig_ptr = int(m.get('text_offset', '0x0'), 16)
            ppos = int(m.get('pointer_offset', '0x0'), 16)
            if orig_ptr == 0:
                orig_ptr = 0x9200
            rd = H + 0x4000*bank + (orig_ptr - 0x8000)
            seg = list(pristine[rd: rd + 0x200])
            toks, used = decode(seg)
            if new_str == orig_str or 'translated' not in m:
                streams.append(tuple(bits_of_bytes(seg[:used])))
                valid_indices.append(i)
                ptr_positions.append((H + 0x4000*bank + (ppos - 0x8000), orig_ptr))
            else:
                try:
                    bits, _ = bytes_fit(new_str)
                    streams.append(tuple(bits))
                    valid_indices.append(i)
                    ptr_positions.append((H + 0x4000*bank + (ppos - 0x8000), orig_ptr))
                except (ValueError, IndexError) as e:
                    errors.append('[%s] msg %d: cannot re-encode translated text: %s' % (blk, i, e))
                    errors.append('    original : %r' % orig_str)
                    errors.append('    translated: %r' % new_str)

        start = base if base is not None else cursor4
        uniq = {}
        order = []
        for b in streams:
            if b not in uniq:
                uniq[b] = None
                order.append(b)
        cursor = start
        assignments = {}
        for b in order:
            if b in pool4:
                assignments[b] = pool4[b]
                continue
            nbytes = (len(b) + 7) // 8
            assignments[b] = cursor
            cursor += nbytes
        if cursor > cap4:
            errors.append('[%s] OVERFLOW: need up to %04X, capacity ends %04X (%d bytes over)' %
                  (blk, cursor, cap4, cursor - cap4))
        for b, addr in assignments.items():
            write_bits(b, bank, addr)
        for idx, i in enumerate(valid_indices):
            b = streams[idx]
            addr = assignments[b]
            poff, orig_ptr = ptr_positions[idx]
            data[poff] = addr & 0xFF
            data[poff + 1] = (addr >> 8) & 0xFF
        for b, addr in assignments.items():
            pool4[b] = addr
        cursor4 = cursor
        print('[%s] ok: %d unique streams, used %04X-%04X = %d of %d bytes (%d%%)' %
              (blk, len(order), start, cursor - 1, cursor - start, cap4 - start,
               100*(cursor - start)//(cap4 - start)))

    # Use BASE for templates, ACCENT for translated magic menus
    CHAR2GLYPH = CHAR2GLYPH_BASE
    handle_9180(tr, pristine, pool4, cursor4, 0xB020, H, errors)  # expanded pool to B020
    CHAR2GLYPH = CHAR2GLYPH_ACCENT
    handle_b800(tr)

    blocks3 = [
        ('bank3_A000', 3, 0xA000, 0x40, True),
        ('bank3_A080', 3, 0xA080, 0x1C, True),
        ('bank3_A0B8', 3, 0xA0B8, 0x24, True),
    ]
    pool3 = {}
    cursor3 = 0xA100
    cap3 = 0xBF8F
    for blk, bank, pta, n, use_accent in blocks3:
        CHAR2GLYPH = CHAR2GLYPH_ACCENT
        msgs = tr['blocks'][blk]['messages']
        start3 = cursor3
        for i in range(n):
            m = msgs.get(str(i), {})
            orig_str = m.get('original', '')
            new_str = m.get('translated', orig_str)
            orig_ptr = int(m.get('text_offset', '0x0'), 16)
            ppos = int(m.get('pointer_offset', '0x0'), 16)
            if orig_ptr == 0:
                orig_ptr = 0xA100
            if new_str == orig_str or 'translated' not in m:
                rd = H + 0x4000*bank + (orig_ptr - 0x8000)
                seg = list(pristine[rd: rd + 0x200])
                toks, used = decode(seg)
                stream = tuple(bits_of_bytes(seg[:used]))
            else:
                try:
                    bits, _ = bytes_fit(new_str)
                    stream = tuple(bits)
                except (ValueError, IndexError) as e:
                    print('[%s] msg %d: cannot re-encode translated text: %s' % (blk, i, e))
                    print('    original : %r' % orig_str)
                    print('    translated: %r' % new_str)
                    sys.exit(1)
            if stream in pool3:
                addr = pool3[stream]
            else:
                addr = cursor3
                nbytes = (len(stream) + 7) // 8
                if cursor3 + nbytes > cap3:
                    print('[%s] OVERFLOW: need up to %04X, capacity ends %04X (%d bytes over)' %
                          (blk, cursor3 + nbytes, cap3, cursor3 + nbytes - cap3))
                    sys.exit(1)
                cursor3 += nbytes
                pool3[stream] = addr
                write_bits(stream, bank, addr)
            poff = H + 0x4000*bank + (ppos - 0x8000)
            data[poff] = addr & 0xFF
            data[poff + 1] = (addr >> 8) & 0xFF
        print('[%s] ok: used %04X-%04X = %d of %d bytes (%d%%)' %
              (blk, start3, cursor3 - 1, cursor3 - start3, cap3 - start3,
               100*(cursor3 - start3)//(cap3 - start3)))
    print('[bank3] shared pool used A100-%04X = %d of %d bytes (%d%%)' %
          (cursor3 - 1, cursor3 - 0xA100, cap3 - 0xA100, 100*(cursor3 - 0xA100)//(cap3 - 0xA100)))

    if errors:
        print('\n--- ERRORS ---')
        for e in errors:
            print(e)
        sys.exit(1)

    open(TR, 'wb').write(bytes(data))
    print('wrote %s' % TR)

if __name__ == '__main__':
    main()