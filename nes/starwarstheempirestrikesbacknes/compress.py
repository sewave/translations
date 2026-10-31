#!/usr/bin/env python3
"""compress.py - Recompresor del formato de compresion de pantallas del juego.

Formato (rutina del juego en $C8B7 / $C9ED, banco fijo):

    bucle:
      flag = leer()                     # 1 byte por cada 4 tokens
      for i in 0..3:
        tok = (flag >> (2*i)) & 3       # LSB primero
        X   = leer()                    # se lee SIEMPRE, tambien en tok == 0
        tok 0 -> fin del stream
        tok 1 -> copiar X bytes literales del stream
        tok 2 -> V = leer(); emitir V repetido X veces          (RLE)
        tok 3 -> lo,hi = leer(); base = posicion de 'lo' en el stream
                 src = base - (lo | hi<<8)
                 copiar X bytes desde src                            (LZ)

La LZ copia desde la MEMORIA del banco (mem[(src+k)&0xFFFF] en el decodificador),
no desde la salida descomprimida: el diccionario son los bytes que ya estan en el
banco delante de la posicion de lectura, es decir el propio stream ya emitido Y
los bytes anteriores al stream (las otras pantallas del banco, sus graficos...).
Ver compress.compress(prefix=...) e insert_all.insert_screens.

El parser es OPTIMO (programacion dinamica sobre los 4 estados del byte de
banderas), porque la eleccion del token en cada posicion no es local: un literal
largo puede saltarse una copia larga. Con el parser voraz anterior las pantallas
de graficos salian un 10-30%% mas grandes que el original y no cabian en su sitio.

Uso:
    python compress.py            -> verifica el recompresor con las 20 pantallas
                                     de la tabla de $CA96 (round-trip y tamanos)
    python compress.py --dump N   -> vuelca la pantalla N comprimida y comparada
"""
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROM_NAME = "Star Wars - The Empire Strikes Back (USA).nes"

FULL = open(os.path.join(HERE, ROM_NAME), "rb").read()
PRG = FULL[16:16 + 262144]
FIXED = PRG[0x3C000:0x40000]          # banco fijo $C000-$FFFF

SCREEN_TABLE = 0xCA96                 # tabla de pantallas (CPU, banco fijo)
SCREEN_TABLE_LEN = 0x50               # 20 ranuras validas de 4 bytes (0..19)
OUTPUT_SIZE = 1024                    # nametable + atributos

INF = float("inf")


def make_mem(bank_prg, extra=None):
    """Imagen de 64 KB con un banco en $8000 y el banco fijo en $C000."""
    mem = bytearray(0x10000)
    mem[0x8000:0x8000 + len(bank_prg)] = bank_prg
    mem[0xC000:0x10000] = FIXED
    if extra:
        for a, b in extra:
            mem[a:a + len(b)] = b
    return mem


def decompress(mem, start, maxout=OUTPUT_SIZE + 64):
    """Descomprime un stream (implementacion de referencia, inversa exacta)."""
    pos = start
    out = bytearray()
    while len(out) < maxout:
        flag = mem[pos]
        pos += 1
        for i in range(4):
            tok = (flag >> (2 * i)) & 3
            X = mem[pos]
            pos += 1
            if tok == 0:
                return bytes(out), pos
            if tok == 1:
                out += mem[pos:pos + X]
                pos += X
            elif tok == 2:
                v = mem[pos]
                pos += 1
                out += bytes([v]) * X
            else:
                lo = mem[pos]
                hi = mem[pos + 1]
                base = pos
                pos += 2
                src = (base - (lo | (hi << 8))) & 0xFFFF
                for k in range(X):
                    out.append(mem[(src + k) & 0xFFFF])
    return bytes(out), pos


MIN_MATCH = 4               # el formato no aporta nada por debajo de 4 (3 bytes + X)
DICT_WINDOW = None          # None = todo el prefijo (los offsets son de 16 bits)
# Tope de candidatos que se examinan por posicion. El banco de este juego tiene
# zonas de relleno (0x00 / 0xFF) donde un mismo 4 gramo aparece cientos de veces
# y casi nunca se extiende: la poda por rebanadas (ver _longest_matches) ya
# resuelve ese caso (3-5 s -> 0,15 s por pantalla sin cambiar ni un byte del
# resultado), asi que el tope se deja en None (sin recortar => optimo). Se
# examinan primero las apariciones MAS RECIENTES, que son las que dan las
# copias largas (las pantallas vecinas del banco).
MATCH_CANDIDATES = None


def _match_index(mem, window=None):
    """{4 gramos del diccionario: [posiciones]} para buscar copias deprisa.

    La clave es el 4 gramo empaquetado en un entero (se calcula rodando un byte
    cada vez): es bastante mas rapido que trocear 'mem' con slices y usar bytes
    como clave, y el indice resultante es identico.
    """
    idx = {}
    last = len(mem) - MIN_MATCH
    first = 0 if window is None else max(0, len(mem) - window)
    if last < first:
        return idx
    get = idx.get
    key = (mem[first] | (mem[first + 1] << 8) | (mem[first + 2] << 16)
           | (mem[first + 3] << 24))
    for s in range(first, last + 1):
        if s > first:
            key = (key >> 8) | (mem[s + MIN_MATCH - 1] << 24)
        lst = get(key)
        if lst is None:
            idx[key] = [s]
        else:
            lst.append(s)
    return idx


def _longest_matches(data, mem, idx, max_lz, maxcand=MATCH_CANDIDATES):
    """longest[i] = (longitud, src) de la copia mas larga que empieza en data[i].

    Solo vale la mas larga: todas las longitudes menores comparten el mismo
    offset y el mismo coste (3 bytes), asi que nunca mejoran.

    El descarte de candidatos es en dos pasos, EN ESTE ORDEN: primero se mira el
    unico byte que decide si el candidato puede superar la mejor copia
    (data[i+best] contra mem[s+best], un par de accesos) y solo si coincide se
    trocean las rebanadas (data[i:i+best] == mem[s:s+best], que en C compara
    'best' bytes) antes de extender. Con los 4 gramos repetidos del relleno el
    primer paso descarta cientos de miles de candidatos casi gratis: la pantalla
    mas lenta del proyecto pasa de 0,28 s a 0,16 s sin cambiar un byte del
    stream. El tope de candidatos acota el caso patologico; ver
    MATCH_CANDIDATES.
    """
    n = len(data)
    res = [(0, -1)] * n
    mlen = len(mem)
    db, mb = bytes(data), bytes(mem)
    get = idx.get
    for i in range(n - MIN_MATCH + 1):
        cands = get(db[i] | (db[i + 1] << 8) | (db[i + 2] << 16)
                    | (db[i + 3] << 24))
        if not cands:
            continue
        top = max_lz if n - i > max_lz else n - i
        lo = 0 if maxcand is None else len(cands) - maxcand
        if lo < 0:
            lo = 0
        best, bsrc = 0, -1
        for c in range(len(cands) - 1, lo - 1, -1):
            if best:
                if top <= best:
                    break           # ningun candidato puede pasar de `top`
                s = cands[c]
                lim = mlen - s
                if lim > top:
                    lim = top
                if lim <= best:
                    continue
                if db[i + best] != mb[s + best]:
                    continue        # difiere justo donde haria falta
                if best > 1 and db[i:i + best] != mb[s:s + best]:
                    continue
                ln = best
            else:
                s = cands[c]
                lim = mlen - s
                if lim > top:
                    lim = top
                ln = 0
            while ln < lim and db[i + ln] == mb[s + ln]:
                ln += 1
            if ln >= MIN_MATCH and ln > best:
                best, bsrc = ln, s
                if best == max_lz:
                    break
        res[i] = (best, bsrc)
    return res


def _dp_rows(data, longest, max_lz):
    """Decision optima para cada (posicion, tokens usados en el grupo).

    Estados m = 0..3 tokens ya emitidos en el byte de banderas actual. Cuando
    m == 0 hay que contar 1 byte de bandera. Al final, si m == 0 hacen falta
    bandera + X del token de fin (2 bytes); si no, solo el X (1 byte).

    Devuelve back[m][i] = (token, X, src): la decision optima en la posicion i
    del estado m, con el coste (en bytes) del resto del stream calculado de
    atras hacia delante. Los bucles de longitudes alternativas se cortan en
    cuanto queda claro que no pueden batir lo ya elegido: para un literal, el
    coste crece con X (limite exacto); para RLE y copia LZ el minimo posible es
    el del token mas un byte obligatorio del resto, asi que si la mejor opcion
    ya lo iguala se corta. El resultado es el mismo que recorriendo todo.
    """
    n = len(data)
    inf = INF
    c0 = [inf] * (n + 1)
    c1 = [inf] * (n + 1)
    c2 = [inf] * (n + 1)
    c3 = [inf] * (n + 1)
    b0 = [None] * (n + 1)
    b1 = [None] * (n + 1)
    b2 = [None] * (n + 1)
    b3 = [None] * (n + 1)
    cs = (c0, c1, c2, c3)
    bs = (b0, b1, b2, b3)
    c0[n] = 2                     # token de fin en un grupo nuevo
    c1[n] = c2[n] = c3[n] = 1     # el X del token de fin (la bandera ya esta)
    for i in range(n - 1, -1, -1):
        di = data[i]
        top = max_lz if n - i > max_lz else n - i
        # racha de bytes iguales (RLE)
        run = 1
        while run < top and data[i + run] == di:
            run += 1
        mlen, msrc = longest[i]
        for m in range(4):
            flag = 1 if m == 0 else 0
            nm = (m + 1) & 3
            cn = cs[nm]
            best = inf
            best_tok = None
            # literales (1 byte de X + X bytes)
            if top >= 1 and cn[i + 1] < inf:
                best = flag + 2 + cn[i + 1]
                best_tok = (1, 1, 0)
                lim = best - flag - 2          # con X >= lim ya no mejora
                X = 2
                while X <= top and X < lim:
                    c = flag + 1 + X + cn[i + X]
                    if c < best:
                        best = c
                        best_tok = (1, X, 0)
                        lim = best - flag - 2
                    X += 1
            # RLE (X + valor = 2 bytes)
            if run >= 3:
                c = flag + 2 + cn[i + run]
                if c < best:
                    best = c
                    best_tok = (2, run, 0)
                elif flag + 3 < best:
                    X = 3
                    while X < run:
                        c = flag + 2 + cn[i + X]
                        if c < best:
                            best = c
                            best_tok = (2, X, 0)
                            if best == flag + 3:
                                break
                        X += 1
            # copia LZ (X + lo + hi = 3 bytes)
            if mlen >= MIN_MATCH:
                c = flag + 3 + cn[i + mlen]
                if c < best:
                    best = c
                    best_tok = (3, mlen, msrc)
                elif flag + 4 < best:
                    X = MIN_MATCH
                    while X < mlen:
                        c = flag + 3 + cn[i + X]
                        if c < best:
                            best = c
                            best_tok = (3, X, msrc)
                            if best == flag + 4:
                                break
                        X += 1
            cs[m][i] = best
            bs[m][i] = best_tok
    return bs


def compress(data, start, max_lz=255, prefix=b"", window=DICT_WINDOW):
    """Recomprime 'data' para que el decodificador lo lea en 'start'.

    'prefix' son los bytes que ya estan en la memoria del banco justo delante de
    'start' (memoria real: insert_all.insert_screens pasa el banco hasta el
    offset del stream). Con prefix=b'' el unico diccionario son las copias
    dentro del propio stream ya emitido (no se usan aqui: el parser optimo solo
    busca en el prefijo, que es de donde copian los streams originales).
    """
    n = len(data)
    if n == 0:
        return bytes([0, 0])
    mem = bytearray(prefix)
    idx = _match_index(mem, window) if mem else {}
    longest = _longest_matches(data, mem, idx, max_lz) if mem else [(0, -1)] * n
    back = _dp_rows(data, longest, max_lz)

    # reconstruir la lista de tokens
    toks = []
    i, m = 0, 0
    while i < n:
        tok, X, src = back[m][i]
        toks.append((tok, X, src, m))
        i += X
        m = (m + 1) & 3

    # emitir: banderas (1 por grupo de 4) + X (+ valor / lo,hi)
    out = bytearray()
    at = 0                      # posicion del payload que se esta emitiendo
    flag_pos = None
    for slot, (tok, X, src, _m) in enumerate(toks):
        if slot % 4 == 0:
            flag_pos = len(out)
            out.append(0)       # bandera del grupo (se rellena ahora)
        out[flag_pos] |= tok << (2 * (slot % 4))
        out.append(X)
        if tok == 1:
            out += data[at:at + X]
        elif tok == 2:
            out.append(data[at])
        else:
            # 'lo' se escribe en la posicion len(prefix)+len(out); su distancia
            # a la fuente es lo que calcula el decodificador
            off = (len(prefix) + len(out)) - src
            out.append(off & 0xFF)
            out.append((off >> 8) & 0xFF)
        at += X
    # token de fin: si el grupo esta lleno hace falta bandera nueva; el X del
    # token de fin se lee siempre (y su valor da igual al decodificador)
    if len(toks) % 4 == 0:
        out.append(0)
    out.append(0)
    return bytes(out)


def screens():
    """[(indice, banco, puntero_cpu)] de la tabla de pantallas."""
    res = []
    for i in range(0, SCREEN_TABLE_LEN, 4):
        off = 0x3C000 + (SCREEN_TABLE - 0xC000) + i
        e = PRG[off:off + 4]
        if len(e) < 4 or e == b"\xff\xff\xff\xff":
            continue
        res.append((i // 4, e[1], e[2] | (e[3] << 8)))
    return res


def main():
    dump = None
    if len(sys.argv) == 3 and sys.argv[1] == "--dump":
        dump = int(sys.argv[2])
    total_ok = 0
    total = 0
    size_orig = 0
    size_new = 0
    for idx, bank, ptr in screens():
        if bank * 0x4000 + 0x4000 > len(PRG):
            print("pantalla %2d: banco %02X fuera de rango" % (idx, bank))
            continue
        mem = make_mem(PRG[bank * 0x4000:(bank + 1) * 0x4000])
        data, end = decompress(mem, ptr)
        prefix = PRG[bank * 0x4000:bank * 0x4000 + (ptr - 0x8000)]
        stream = compress(data, ptr, prefix=prefix)
        mem2 = make_mem(PRG[bank * 0x4000:(bank + 1) * 0x4000])
        mem2[ptr:ptr + len(stream)] = stream
        data2, _ = decompress(mem2, ptr)
        ok = data2 == data
        total += 1
        total_ok += 1 if ok else 0
        size_orig += end - ptr
        size_new += len(stream)
        print("pantalla %2d banco %02X $%04X: %4d bytes descomprimidos | stream "
              "%4d -> %4d bytes (%+d) | round-trip %s"
              % (idx, bank, ptr, len(data), end - ptr, len(stream),
                 len(stream) - (end - ptr), "OK" if ok else "FALLA"))
        if dump == idx:
            print("   datos:", data[:64].hex())
            print("   stream:", stream[:64].hex())
    print("round-trip correcto en %d/%d pantallas; streams %d -> %d bytes"
          % (total_ok, total, size_orig, size_new))
    return 0 if total_ok == total else 1


if __name__ == "__main__":
    sys.exit(main())
