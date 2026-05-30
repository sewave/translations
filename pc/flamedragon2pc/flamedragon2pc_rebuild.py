import json
import struct
import argparse
import re

def load_table(table_path):
    char_to_id = {}
    try:
        with open(table_path, 'r', encoding='utf-8') as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith('/'): continue
                if '=' in line:
                    id_hex, char_val = line.split('=', 1)
                    char = char_val.split('(')[0].strip()
                    if char == '_' or char == ' ':
                        char_to_id['_'] = int(id_hex, 16)
                        char_to_id[' '] = int(id_hex, 16)
                    else:
                        char_to_id[char] = int(id_hex, 16)
    except FileNotFoundError:
        print(f"Error: No se encontró la tabla en {table_path}")
        exit(1)
    return char_to_id

def pack_string(text, char_to_id):
    output = bytearray()
    # Capture any string between {} as a token, any [XXXX] as a hex code, or any single character

    tokens = re.findall(r'\{[0-9A-Za-z_ \#\<\>\-\*]*\}|\[[0-9A-Fa-f]{4}\]|.', text, re.DOTALL)
    
    for token in tokens:
        if token.startswith('[') and token.endswith(']'):
            val = int(token[1:-1], 16)
        elif token in char_to_id:
            val = char_to_id[token]
        else:
            val = char_to_id.get(token, 0x00B5) # 0x00B5 como espacio por defecto
        
        output.extend(struct.pack('<H', val))
    return output

def rebuild(json_path, output_path, table_path):
    char_to_id = load_table(table_path)
    
    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    magic_header = b'\x4C' * 6
    num_sections = len(data)
    
    bin_sections = []
    section_stats = []

    # 1. Procesar Secciones
    for sec_obj in data:
        entries = sec_obj["entries"]
        num_entries = len(entries)
        
        internal_ptr_table = bytearray()
        internal_data = bytearray()
        current_internal_offset = num_entries * 2 # Punteros de 16 bits
        
        for entry in entries:
            text = entry.get("translation", "")
            packed = pack_string(text, char_to_id)
            
            internal_ptr_table.extend(struct.pack('<H', current_internal_offset))
            internal_data.extend(packed)
            current_internal_offset += len(packed)
        
        full_section = internal_ptr_table + internal_data
        bin_sections.append(full_section)
        section_stats.append((sec_obj["section"], num_entries, len(full_section)))

    # 2. Calcular Punteros Globales (32 bits)
    # IMPORTANTE: Añadimos un puntero extra al final (num_sections + 1)
    global_ptrs_count = num_sections + 1
    header_total_size = 6 + (global_ptrs_count * 4)
    
    global_offsets = []
    current_global_offset = header_total_size
    
    for sec_bin in bin_sections:
        global_offsets.append(current_global_offset)
        current_global_offset += len(sec_bin)
    
    # El último offset es el tamaño total del archivo (sentinela)
    global_offsets.append(current_global_offset)

    # 3. Escritura
    with open(output_path, 'wb') as f:
        f.write(magic_header)
        for goff in global_offsets:
            f.write(struct.pack('<I', goff))
        for sec_bin in bin_sections:
            f.write(sec_bin)

    # 4. Mostrar Estadísticas
    print("-" * 40)
    print(f"Cabecera: {global_ptrs_count} punteros, {header_total_size} bytes (incluye magic)")
    for s_id, s_ptrs, s_size in section_stats:
        print(f"Sección {s_id:2}: {s_ptrs:3} punteros, {s_size:6} bytes")
    print("-" * 40)
    print(f"Total: {num_sections} secciones, {current_global_offset} bytes finales")
    print("-" * 40)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Rebuild FDTXT.DAT con punteros 32/16 bits y offset final")
    parser.add_argument("-i", "--input", required=True)
    parser.add_argument("-o", "--output", required=True)
    parser.add_argument("-t", "--table", required=True)
    args = parser.parse_args()
    rebuild(args.input, args.output, args.table)