# -*- coding: utf-8 -*-
import sys
sys.path.insert(0, r'C:\dev\romhack\5.empty\syndicatesmd')
from extract_all import decompress_lzss

WINDOW = 0x1000
D3_INIT = 0xFEE

def compress_lzss(data):
    buf = [0] * WINDOW
    d3 = D3_INIT
    out = bytearray()
    pos = 0
    n = len(data)
    ctrl_pos = None
    pending = 0
    nbits = 0

    # hash: 3 bytes -> lista de posiciones (para buscar matches)
    # usamos dict por valor de los 3 primeros bytes
    from collections import defaultdict
    hist = defaultdict(list)  # (b0,b1,b2) -> [posiciones q]

    def flush_ctrl():
        nonlocal ctrl_pos, pending, nbits
        out[ctrl_pos] = pending & 0xFF
        ctrl_pos = None
        pending = 0
        nbits = 0

    def start_ctrl():
        nonlocal ctrl_pos, pending, nbits
        ctrl_pos = len(out)
        out.append(0)  # reservar byte de control
        pending = 0
        nbits = 0

    def add_bit(b):
        nonlocal pending, nbits, ctrl_pos
        pending |= (b << nbits)
        nbits += 1
        if nbits == 8:
            flush_ctrl()
            start_ctrl()

    start_ctrl()

    while pos < n:
        best_q = -1
        best_len = 0
        if pos + 2 < n:
            key = (data[pos], data[pos+1], data[pos+2])
            candidates = hist.get(key)
            if candidates:
                # buscar el mejor (el que más extienda)
                for q in candidates:
                    # verificar longitud
                    maxlen = min(18, n - pos, WINDOW - ((d3 - ((D3_INIT + q) & 0xFFF)) & 0xFFF))
                    # distancia circular desde d3 al inicio del match
                    off = (D3_INIT + q) & 0xFFF
                    dist = (d3 - off) & 0xFFF
                    if dist == 0:
                        continue
                    maxlen = min(maxlen, dist, 18)
                    l = 0
                    while l < maxlen:
                        if data[pos + l] != buf[(off + l) & 0xFFF]:
                            break
                        l += 1
                    if l > best_len:
                        best_len = l
                        best_q = q
        if best_len >= 3:
            # emitir match: bit 0
            off = (D3_INIT + best_q) & 0xFFF
            out.append(off & 0xFF)
            out.append(((off >> 8) << 4) | ((best_len - 3) & 0xF))
            add_bit(0)
            # actualizar ventana: escribir best_len bytes desde la historia
            for i in range(best_len):
                v = buf[(off + i) & 0xFFF]
                buf[d3 & 0xFFF] = v
                d3 = (d3 + 1) & 0xFFF
                # añadir a hist los puntos ya emitidos: pos+i
                qq = pos + i
                if qq + 2 < n:
                    hist[(data[qq], data[qq+1], data[qq+2])].append(qq)
            pos += best_len
        else:
            # literal: bit 1
            b = data[pos]
            out.append(b)
            add_bit(1)
            buf[d3 & 0xFFF] = b
            d3 = (d3 + 1) & 0xFFF
            if pos + 2 < n:
                hist[(data[pos], data[pos+1], data[pos+2])].append(pos)
            pos += 1

    # finalizar: si quedan bits del control sin vaciar, escribirlos
    if ctrl_pos is not None:
        flush_ctrl()
    return bytes(out)


if __name__ == '__main__':
    data = open(r'Syndicate (USA, Europe) (En,Fr,De).md', 'rb').read()
    addr = 0x1537E0
    clen = (data[addr] << 8) | data[addr + 1]
    raw = decompress_lzss(data, addr + 2, addr + 2 + clen)
    print('original decompressed:', len(raw))
    comp = compress_lzss(raw)
    print('compressed size:', len(comp), '(original stream:', clen, ')')
    back = decompress_lzss(comp, 0, len(comp))
    print('round-trip OK:', back == raw)
    if back != raw:
        for i, (a, b) in enumerate(zip(raw, back)):
            if a != b:
                print('first diff at', i, repr(raw[i:i+20]), repr(back[i:i+20]))
                break
