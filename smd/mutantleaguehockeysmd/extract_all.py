#!/usr/bin/env python3
# extract_all.py — Mutant League Hockey SMD
# Extrae pool de textos 04CF04-066E34 y gfx a ficheros raíz según tr_rules.md
# Solo usa la ROM base, no depende de work/
import pathlib, json, struct

ROM_NAME = "Mutant League Hockey (USA, Europe).md"
POOL_START = 0x04CF04
POOL_END   = 0x066E35  # exclusivo, incluye terminador de "(5) ANNIHILATION" en 066E34
GFX_START  = 0x066E40
GFX_END    = 0x06A000  # tiles crudos, ~15 KiB (ajustar si se expande)

TBL_EXTRACT = "main_extract.tbl"
TBL_INSERT  = "main_insert.tbl"
JSON_OUT    = "texts.json"

def make_tbl(path):
    # TBL identidad 20-7E + controles
    lines=[]
    for b in range(0x20, 0x7F):
        ch=chr(b)
        # escapar '=' si fuera necesario (no lo es)
        lines.append(f"{b:02X}={ch}")
    # controles: 00 como terminador, no mapear, pero añadir para insert
    # Añadir líneas para bytes libres para acentos (reservar 80-87 para futuro)
    # Dejamos insert.tbl igual que extract, traductor puede añadir 80=á etc.
    pathlib.Path(path).write_text("\n".join(lines)+"\n", encoding="utf-8")
    return lines

def extract_pool():
    rom = pathlib.Path(ROM_NAME)
    if not rom.exists():
        raise SystemExit(f"ROM no encontrada: {ROM_NAME}")
    data = rom.read_bytes()
    pool = data[POOL_START:POOL_END]
    # Validar que pool solo tiene 00 o 20-7E
    bad = [b for b in pool if b != 0x00 and not (0x20 <= b <= 0x7E)]
    if bad:
        print(f"ADVERTENCIA: pool tiene {len(bad)} bytes no ASCII")
    # Split en entradas incluyendo vacías
    entries=[]
    i=0
    while i < len(pool):
        j = pool.find(b'\x00', i)
        if j == -1:
            # sin terminador, resto como última entrada (no debería pasar)
            entries.append(pool[i:])
            break
        entries.append(pool[i:j])
        i = j+1
    print(f"Pool {POOL_START:06X}-{POOL_END:06X} len {len(pool)} entradas {len(entries)} vacías {sum(1 for e in entries if len(e)==0)}")
    return entries, data

def build_json(entries, data):
    # Construir messages con offsets absolutos 32-bit y pointer_offsets (nuevo, deprecado pointer_offset)
    from collections import defaultdict
    import struct
    # Mapear absoluto -> idx
    abs_texts = []
    off=0
    for raw in entries:
        abs_texts.append(POOL_START+off)
        off += len(raw)+1
    # Encontrar todos los punteros 32b que apuntan al pool (fuera del pool)
    all_hits=[]
    for abs_text in abs_texts:
        pat=struct.pack(">I", abs_text)
        pos=0
        while True:
            idx2=data.find(pat, pos)
            if idx2==-1: break
            if idx2 < POOL_START or idx2 >= POOL_END:
                all_hits.append((idx2, abs_text))
            pos=idx2+1
    all_hits.sort()
    # Agrupar en rachas stride 4 para detectar tablas reales
    tables=[]
    run=[]
    for idx,ab in all_hits:
        if not run:
            run=[(idx,ab)]
        elif idx==run[-1][0]+4:
            run.append((idx,ab))
        else:
            tables.append(run)
            run=[(idx,ab)]
    if run: tables.append(run)
    real_ptr_set=set()
    for t in tables:
        if len(t) < 2: continue
        vals=[v for _,v in t]
        if len(set(vals))==len(vals) and all(vals[i] < vals[i+1] for i in range(len(vals)-1)):
            for p,_ in t:
                real_ptr_set.add(p)
    # Añadir todos los punteros listados explícitamente (aunque sean singletons) se hará después, aquí solo para detectar
    # Construir hits_by_text filtrado a reales
    hits_by_text=defaultdict(list)
    for ptr_pos, ab in all_hits:
        if ptr_pos in real_ptr_set:
            hits_by_text[ab].append(ptr_pos)
        else:
            # Si está cerca de una tabla real (±0x200), también es real (captura duplicados como 01B6D0 para Freeze Land)
            for rp in real_ptr_set:
                if abs(ptr_pos - rp) < 0x200:
                    hits_by_text[ab].append(ptr_pos)
                    break
    # También asegurar que cada abs_text con al menos un hit pero no en real_ptr_set y con ptr listado, se incluya
    # Para simplificar, si un abs_text tiene al menos un hit y su primera aparición está listada como pointer_offset en JSON previo, se considera real
    blocks={}
    blocks["main_pool"]={
        "text_address": f"0x{POOL_START:08X}",
        "pointer_address": "0x00018D8A",
        "method": "null_terminated, pointer_table_32be_absolute",
        "note": "Pool 04CF04-066E35, 1953 entradas, 1889 con punteros (pointer_offsets), 64 secuenciales [] . Offsets absolutos 32-bit.",
        "messages": {}
    }
    for idx, raw in enumerate(entries):
        txt=[]
        for b in raw:
            if 0x20 <= b <= 0x7E:
                txt.append(chr(b))
            else:
                txt.append(f"[{b:02X}]")
        s="".join(txt)
        abs_text = abs_texts[idx]
        lst = sorted(set(hits_by_text.get(abs_text, [])))
        # Si no hay hits pero el texto es parte de los 64 secuenciales, dejar vacío
        # Si hay hits pero lst vacío porque era singleton no en tabla, buscar directamente sin filtro de real_ptr_set (para capturar singletons listados)
        if not lst:
            # Buscar directamente todos los hits para este abs_text sin filtro de tabla (para singletons como 01AF83)
            pat=struct.pack(">I", abs_text)
            pos=0
            tmp=[]
            while True:
                p=data.find(pat, pos)
                if p==-1: break
                if p < POOL_START or p >= POOL_END:
                    tmp.append(p)
                pos=p+1
            if tmp:
                lst=sorted(set(tmp))
        blocks["main_pool"]["messages"][str(idx)]={
            "text_offset": f"0x{abs_text:08X}",
            "pointer_offsets": [f"0x{p:08X}" for p in lst],
            "original": s,
            "translated": s
        }
    # Opcional: bloques por tabla para facilitar traducción (no necesarios para inserción, pero útiles)
    # No los generamos aquí para mantener el JSON simple y evitar duplicar pool.
    # Si se quieren, se pueden derivar de monotonic_tables.json en work/

    out={"schema":1, "comment":"Mutant League Hockey SMD - textos extraidos del pool 04CF04", "blocks": blocks}
    # Escritura con pointer_offsets en una sola línea y orden text_offset->pointer_offsets->original->translated
    import re
    tmp = json.dumps(out, indent=2, ensure_ascii=False)
    # Colapsar arrays pointer_offsets multilínea a una sola línea
    # Patrón: "pointer_offsets": [\n  "...",\n  "..."\n  ]
    def repl(m):
        inner = m.group(1)
        # inner contiene los elementos con saltos y espacios, lo dejamos en una línea con ", "
        # Extraer los strings "0x..."
        vals = re.findall(r'"0x[0-9A-Fa-f]+"', inner)
        return f'"pointer_offsets": [{", ".join(vals)}]'
    tmp = re.sub(r'"pointer_offsets":\s*\[([^\]]*?)\]', repl, tmp, flags=re.DOTALL)
    pathlib.Path(JSON_OUT).write_text(tmp, encoding="utf-8")
    print(f"Generado {JSON_OUT} con {len(entries)} mensajes (pointer_offsets en una línea)")

def extract_gfx(data):
    gfx = data[GFX_START:GFX_END]
    out = pathlib.Path("tiles.gfx")
    out.write_bytes(gfx)
    print(f"GFX {GFX_START:06X}-{GFX_END:06X} len {len(gfx)} -> {out}")

def main():
    make_tbl(TBL_EXTRACT)
    make_tbl(TBL_INSERT)
    entries, data = extract_pool()
    build_json(entries, data)
    extract_gfx(data)
    # Extraer binario de parche si existe? No, los binarios se extraen como copia del área parcheada
    # Para este juego, el parche de cabecera (E0) se documenta pero no se extrae
    print("Extraccion completada.")

if __name__=="__main__":
    main()
