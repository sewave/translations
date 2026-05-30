import argparse
import struct
import os
import json

def load_table(table_path):
    table = {}
    if os.path.exists(table_path):
        with open(table_path, "r", encoding="utf-8") as f:
            for line in f:
                line = line.strip()
                if "=" in line:
                    h, c = line.split("=", 1)
                    try: table[int(h, 16)] = c
                    except: continue
    return table

def bytes_to_mapped(raw_chunk, table):
    resultado = ""
    i = 0
    while i < len(raw_chunk):
        if i + 1 < len(raw_chunk):
            val = struct.unpack("<H", raw_chunk[i:i+2])[0]            
            if val in table:
                resultado += table[val]
            else:
                resultado += f"[{val:04X}]"
            i += 2
        else:
            resultado += f"~{raw_chunk[i]:02X}~"
            i += 1
    return resultado

def extract(dat_path, json_path, table_path):
    table = load_table(table_path)
    with open(dat_path, "rb") as f:
        data = f.read()

    first_ptr = struct.unpack("<I", data[6:10])[0]
    num_sections = (first_ptr - 6) // 4
    master_offsets = [struct.unpack("<I", data[6+i*4 : 10+i*4])[0] for i in range(num_sections)]

    final_output = []
    for s_idx, s_start in enumerate(master_offsets):
        s_end = master_offsets[s_idx+1] if s_idx+1 < len(master_offsets) else len(data)
        try:
            first_local = struct.unpack("<H", data[s_start:s_start+2])[0]
            num_entries = first_local // 2
            local_offsets = [struct.unpack("<H", data[s_start+i*2 : s_start+(i+1)*2])[0] for i in range(num_entries)]
        except: continue

        entries = []
        for d_idx, l_off in enumerate(local_offsets):
            abs_start = s_start + l_off
            abs_end = s_start + local_offsets[d_idx+1] if d_idx+1 < len(local_offsets) else s_end
            raw_chunk = data[abs_start:abs_end]
            if raw_chunk:
                texto = bytes_to_mapped(raw_chunk, table)
                entries.append({"id": d_idx, "original": texto, "translation": texto})
        final_output.append({"section": s_idx, "entries": entries})

    with open(json_path, "w", encoding="utf-8") as f:
        json.dump(final_output, f, indent=4, ensure_ascii=False)
    print(f"Analysis completed in {json_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Extract FDTXT.DAT to json")
    parser.add_argument("-i", "--input", required=True)
    parser.add_argument("-o", "--output", required=True)
    parser.add_argument("-t", "--table", required=True)
    args = parser.parse_args()
    extract(args.input, args.output, args.table)