#!/usr/bin/env python3
# insert_all.py — Mutant League Hockey SMD (PURO)
# Inserta texts_translated.json partiendo de la ROM base
# Solo modifica punteros 32b vía pointer_offset absoluto y pool extendido 0x200000->0x300000 (3 MB)
# No toca GFX (066E40), hex (mutantleaguehockeysmd.hex) ni viejo pool 04CF04 cuando expande
# Genera TR_Mutant League Hockey (USA, Europe).md puro
import pathlib, json, struct

ROM_SRC = "Mutant League Hockey (USA, Europe).md"
ROM_DST = "TR_Mutant League Hockey (USA, Europe).md"
POOL_START = 0x04CF04
POOL_END   = 0x066E35
POOL_SIZE_ORIG = POOL_END - POOL_START

JSON_IN = "texts_translated.json"
JSON_FALLBACK = "texts.json"

TBL_INSERT = "main_insert.tbl"

TABLES = []  # no se usa en modo puro, solo JSON

def load_tbl(path):
    tbl={}
    if not pathlib.Path(path).exists():
        return {}
    for line in pathlib.Path(path).read_text(encoding="utf-8", errors="ignore").splitlines():
        line=line.strip()
        if not line or line.startswith(";") or "=" not in line:
            continue
        k,v=line.split("=",1)
        k=k.strip()
        try:
            b=int(k,16)
            tbl[v]=b  # char -> byte
        except:
            pass
    return tbl

def encode_text(s, tbl):
    out=bytearray()
    i=0
    while i < len(s):
        if s[i]=="[" and "]" in s[i:]:
            j=s.find("]", i)
            hexpart=s[i+1:j]
            if len(hexpart)==2 and all(c in "0123456789ABCDEFabcdef" for c in hexpart):
                out.append(int(hexpart,16))
                i=j+1
                continue
        ch=s[i]
        if ch in tbl:
            out.append(tbl[ch])
        else:
            # fallback: ascii byte
            out.append(ord(ch) & 0xFF)
        i+=1
    return bytes(out)

def main():
    src = pathlib.Path(ROM_SRC)
    if not src.exists():
        raise SystemExit(f"ROM base no encontrada: {ROM_SRC}")
    data = bytearray(src.read_bytes())
    # Cargar json traducido
    jpath = pathlib.Path(JSON_IN)
    if not jpath.exists():
        jpath = pathlib.Path(JSON_FALLBACK)
        if not jpath.exists():
            raise SystemExit("No se encuentra texts_translated.json ni texts.json")
        print(f"Usando {JSON_FALLBACK} como fallback")
    j=json.loads(jpath.read_text(encoding="utf-8"))
    blocks=j.get("blocks",{})
    if "main_pool" not in blocks:
        raise SystemExit("Bloque main_pool no encontrado en JSON")
    msgs=blocks["main_pool"]["messages"]
    # Ordenar por índice numérico para reconstruir pool en orden original
    ordered = sorted(msgs.items(), key=lambda x: int(x[0]))
    tbl = load_tbl(TBL_INSERT)
    # si tbl vacía, usar identidad 20-7E
    if not tbl:
        for b in range(0x20, 0x7F):
            tbl[chr(b)]=b
    new_pool=bytearray()
    offsets=[]  # offsets relativos de cada mensaje en nuevo pool
    for idx, m in ordered:
        off = len(new_pool)
        offsets.append(off)
        txt = m.get("translated", m.get("original",""))
        enc = encode_text(txt, tbl)
        new_pool.extend(enc)
        new_pool.append(0x00)
    # Ahora new_pool contiene todas las entradas con terminador, igual que pool original pero con traducciones
    # Comparar con tamaño original
    print(f"Pool original {POOL_SIZE_ORIG} nuevo {len(new_pool)}")
    # Detectar tablas dinámicamente si nuestra lista hardcodeada está incompleta: escanear de nuevo
    # pero usamos la lista TABLES ya conocida
    # SIEMPRE expandir a 3 MB (aunque quepa), para tocar punteros siempre
    TARGET_SIZE = 0x300000  # 3 MB = 3145728 bytes
    new_base = len(data)  # 0x200000 (final actual de 2 MB), siempre expandido
    # Alinear a 0x10 (ya lo está)
    if new_base % 0x10 != 0:
        new_base = (new_base + 0xF) & ~0xF
        data.extend(b'\x00' * (new_base - len(data)))
    data.extend(new_pool)
    # Pad hasta 3 MB
    if len(data) < TARGET_SIZE:
        data.extend(b'\x00' * (TARGET_SIZE - len(data)))
    elif len(data) > TARGET_SIZE:
        print(f"ADVERTENCIA: pool excede 3 MB ({len(data):06X} > {TARGET_SIZE:06X}), se deja tamaño {len(data):06X}")
    print(f"Pool SIEMPRE expandido @ {new_base:06X} len {len(new_pool)} (original {POOL_SIZE_ORIG}) -> ROM {len(data)} bytes (3 MB forzado, toca punteros siempre)")
    # Actualizar tablas: cada entrada de cada tabla apunta a nuevo offset = new_base + offsets[idx]
    # Necesitamos mapear idx global -> nuevo offset absoluto
    # Pero las tablas no apuntan a todas las entradas, solo a un subconjunto. Necesitamos para cada tabla,
    # para cada posición k en la tabla, obtener el idx original que apuntaba y actualizar.
    # Para ello, re-leemos los valores originales de cada tabla en la ROM base para saber qué idx apuntaban.
    # Sin embargo, como no tenemos la ROM base ya modificada en memoria (data ya tiene nuevo pool), necesitamos
    # leer la ROM base aparte para los valores originales.
    # Actualizar punteros usando pointer_offset absoluto de texts_translated.json (fuente de verdad)
    # Esto evita falsos positivos de discover_tables y asegura que 746, 846, 1906, 733 etc. se actualicen
    base_data = src.read_bytes()
    # Construir mapa rel->idx para traducir offsets
    base_pool = base_data[POOL_START:POOL_END]
    rel_to_idx={}
    off=0
    idx=0
    while off < len(base_pool):
        rel_to_idx[off]=idx
        j = base_pool.find(b'\x00', off)
        if j==-1:
            break
        off = j+1
        idx+=1
    updated=0
    # Optimizado: escanear ROM una sola vez para encontrar todos los punteros 32b que apuntan al pool
    # En lugar de 1953 * 2MB búsquedas, hacer un único pase O(N)
    pool_set = set(int(m.get("text_offset","0"),16) for m in msgs.values() if m.get("text_offset","0") not in ("0xFFFFFFFF","0xFFFF"))
    all_hits_for_filter = []
    # Escanear solo fuera del pool, alineado a 2 (par) para 68k, pero permitimos impar para no perder 01AF83
    # Para velocidad, escanear cada 2 bytes fuera del pool
    # Rango 0x000000-0x04CF04 y 0x066E35-0x200000 (2MB)
    for base_off in (0, POOL_END):
        end = POOL_START if base_off==0 else len(base_data)
        start = base_off
        # Alinear a par
        if start % 2 == 1:
            start += 1
        for ptr_pos in range(start, min(end, len(base_data)-3), 2):
            # Leer 32b BE
            val = (base_data[ptr_pos]<<24)|(base_data[ptr_pos+1]<<16)|(base_data[ptr_pos+2]<<8)|base_data[ptr_pos+3]
            if val in pool_set:
                all_hits_for_filter.append(ptr_pos)
    all_hits_for_filter.sort()
    # Agrupar en rachas stride 4
    real_ptr_set=set()
    run=[]
    for idx in all_hits_for_filter:
        if not run:
            run=[idx]
        elif idx==run[-1]+4:
            run.append(idx)
        else:
            if len(run)>=2:
                vals=[struct.unpack(">I", base_data[p:p+4])[0] for p in run]
                if len(set(vals))==len(vals) and all(vals[i] < vals[i+1] for i in range(len(vals)-1)):
                    for p in run:
                        real_ptr_set.add(p)
            run=[idx]
    if run and len(run)>=2:
        vals=[struct.unpack(">I", base_data[p:p+4])[0] for p in run]
        if len(set(vals))==len(vals) and all(vals[i] < vals[i+1] for i in range(len(vals)-1)):
            for p in run:
                real_ptr_set.add(p)
    # Añadir punteros listados explícitamente (singletons como 01AF83)
    for k_str, m in msgs.items():
        # Soportar ambos formatos
        lst = m.get("pointer_offsets")
        if lst is None:
            lst = [m.get("pointer_offset","0xFFFFFFFF")] if m.get("pointer_offset","0xFFFFFFFF") not in ("0xFFFFFFFF","0xFFFF") else []
        for ptr_str in lst:
            if ptr_str in ("0xFFFFFFFF","0xFFFF"): continue
            try:
                real_ptr_set.add(int(ptr_str,16))
            except: pass

    # Nuevo formato: pointer_offsets (lista), deprecado pointer_offset singular; para 64 secuenciales lista vacía
    for k_str, m in msgs.items():
        # Soportar ambos formatos: nuevo pointer_offsets y viejo pointer_offset
        ptr_list = m.get("pointer_offsets")
        if ptr_list is None:
            # Fallback viejo formato singular
            ptr_str = m.get("pointer_offset", "0xFFFFFFFF")
            if ptr_str in ("0xFFFFFFFF","0xFFFF"):
                continue
            ptr_list = [ptr_str]
        else:
            # Nuevo formato: lista (vacía para secuenciales)
            if not ptr_list:
                continue
        try:
            abs_text = int(m.get("text_offset","0"),16)
        except:
            continue
        idx_glob = int(k_str)
        if idx_glob >= len(offsets):
            continue
        new_off = offsets[idx_glob]
        new_ptr = new_base + new_off
        # Actualizar todos los ptrs de la lista (para duplicados como 595 con 2)
        for ptr_str in ptr_list:
            try:
                ptr_abs = int(ptr_str,16)
            except:
                continue
            if ptr_abs+4 > len(data) or ptr_abs+4 > len(base_data):
                continue
            struct.pack_into(">I", data, ptr_abs, new_ptr)
            updated+=1
        if k_str in ("746","846","1906","733","1890","1930","595"):
            print(f"  {k_str} text {m.get('text_offset')} {m['original'][:20]} -> {hex(new_ptr)} ptrs {ptr_list}")
    print(f"Punteros actualizados vía pointer_offsets: {updated} (de {len([k for k in msgs if msgs[k].get('pointer_offsets') or msgs[k].get('pointer_offset') not in ('0xFFFFFFFF','0xFFFF')])} entradas con puntero)")
    # También actualizar puntero base aislado 018D8A -> pool start
    try:
        base_ptr = 0x00018D8A
        if base_ptr+4 <= len(data) and base_ptr+4 <= len(base_data):
            orig_base = struct.unpack(">I", base_data[base_ptr:base_ptr+4])[0]
            if orig_base == POOL_START:
                struct.pack_into(">I", data, base_ptr, new_base)
                print(f"  base ptr 018D8A {hex(orig_base)} -> {hex(new_base)}")
    except:
        pass

    # Solo MASTER CODE 60 04 @ 00000690 (no aplicar resto del hex: Wave 001FFFE0 ni GFX 686C0/68C40)
    try:
        struct.pack_into(">H", data, 0x690, 0x6004)
        print(f"  MASTER CODE aplicado 60 04 @ 00000690")
    except:
        pass

    # Puro: solo punteros vía JSON y pool + hex/MASTER CODE, sin GFX viejo pool
    # Corregir header ROM end (0x1A4) para 3 MB y checksum SMD
    # Header 0x1A0: ROM start (00000000), 0x1A4: ROM end (size-1)
    new_end = len(data) - 1
    struct.pack_into(">I", data, 0x1A4, new_end)
    print(f"Header ROM end corregido: {hex(new_end)} (size {hex(len(data))})")
    s=0
    for i in range(0x200, len(data), 2):
        w = (data[i]<<8)|data[i+1] if i+1 < len(data) else data[i]<<8
        s = (s + w) & 0xFFFF
    data[0x18E] = (s>>8) & 0xFF
    data[0x18F] = s & 0xFF
    print(f"Checksum corregido: {s:04X}")

    # Escribir TR (puro, sin tocar viejo pool 04CF04 cuando expande)
    pathlib.Path(ROM_DST).write_bytes(data)
    print(f"Generado {ROM_DST} ({len(data)} bytes) puro")

if __name__=="__main__":
    main()
