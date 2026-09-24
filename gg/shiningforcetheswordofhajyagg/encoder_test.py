# -*- coding: utf-8 -*-
# Encoder Huffman semi-adaptativo replicando huffman.cpp / tools.py del proyecto hermano.
# Verificacion: re-construir arboles desde el texto ORIGINAL y comparar byte a byte
# con los arboles que ya estan en la ROM. Si coinciden, el encoder es correcto.
import os
import sys
from collections import deque

ROOT = os.path.dirname(os.path.abspath(__file__))
ROM_PATH = os.path.join(ROOT, 'Shining Force - The Sword of Hajya (USA).gg')

EOS = 0xDB
LIMIT = 0x100

data = open(ROM_PATH, 'rb').read()


class Node:
    def __init__(self, item=-1, count=0, left=None, right=None):
        self.item = item
        self.count = count
        self.left = left
        self.right = right


def insert_node(nodes, node):
    # mantiene nodos en orden DESCENDENTE por count; inserta en el primer
    # sitio con count menor -> el mas pequeno queda al final (empates al final)
    for i in range(len(nodes)):
        if nodes[i].count < node.count:
            nodes.insert(i, node)
            return
    nodes.append(node)


def build_tree(counts):
    """counts: lista de 256 enteros -> Node raiz o None"""
    nodes = []
    for sym, c in enumerate(counts):
        if c:
            insert_node(nodes, Node(item=sym, count=c))
    while len(nodes) > 1:
        left = nodes.pop()    # el de menor count va a la izquierda
        right = nodes.pop()   # el segundo menor a la derecha
        node = Node(count=left.count + right.count, left=left, right=right)
        insert_node(nodes, node)
    if not nodes:
        return None
    return nodes[0]


# -- formato de arbol en ROM ------------------------------------------------
# shape: preorden (0=interno, 1=hoja), bits MSB-first, relleno 0
# symbols: preorden de hojas, escritos en orden INVERSO (push_front), antes del shape
def tree_to_bytes(root):
    shape_bits = []
    sym_front = []
    if root is None:
        return b''
    # recorrido preorden
    stack = [root]
    order = []  # (is_leaf, item)
    # recorrido iterativo preorden
    def walk(n):
        if n.left is None and n.right is None:
            order.append((True, n.item))
        else:
            order.append((False, None))
            walk(n.left)
            walk(n.right)
    walk(root)
    shape = []
    syms = []
    for is_leaf, item in order:
        if is_leaf:
            shape.append(1)
            syms.append(item)
        else:
            shape.append(0)
    # symbols en orden inverso de aparicion
    syms_rev = list(reversed(syms))
    # empaquetar shape
    out = bytearray()
    buf = 0
    bits = 0
    for b in shape:
        buf = (buf << 1) | b
        bits += 1
        if bits == 8:
            out.append(buf)
            buf = 0
            bits = 0
    if bits:
        while bits < 8:
            buf <<= 1
            bits += 1
        out.append(buf)
    return bytes(syms_rev) + bytes(out)


def encode_msg(msg_bytes, trees, ptrs):
    """Codifica una cadena (lista de bytes) con los arboles dados.
    Devuelve el bytearray comprimido SIN el byte de longitud."""
    out = bytearray()
    buf = 0
    bits = 0
    tree = EOS
    for sym in msg_bytes:
        root = trees[tree]
        # buscar codigo del simbolo en el arbol: ascendiendo con branch
        code = []
        node = root
        # construir mapa item->(padre,branch) o directamente recorrer
        # metodo simple: recorrer arbol y encontrar la hoja
        found = find_code(root, sym)
        if found is None:
            return None
        for bit in found:
            buf = (buf << 1) | bit
            bits += 1
            if bits == 8:
                out.append(buf)
                buf = 0
                bits = 0
        tree = sym
    if bits:
        while bits < 8:
            buf <<= 1
            bits += 1
        out.append(buf)
    return out


def find_code(root, sym):
    if root is None:
        return None
    if root.left is None and root.right is None:
        return [] if root.item == sym else None
    left = find_code(root.left, sym)
    if left is not None:
        return [0] + left
    right = find_code(root.right, sym)
    if right is not None:
        return [1] + right
    return None


# -- decodificar texto original de la ROM ------------------------------------
TREE_TBL = 0x2A611
PAGE = 0x28000


def get_tree_ptr(tree):
    v = data[TREE_TBL + tree * 2] | (data[TREE_TBL + tree * 2 + 1] << 8)
    if v == 0xFFFF:
        return None
    return v - 0x4000


def decode_string(pos):
    length = data[pos]
    if length == 0:
        return None, pos
    pos += 1
    bits = 8
    barrel = data[pos]
    pos += 1
    length -= 1
    tree = EOS
    out = []
    guard = 0
    while True:
        guard += 1
        if guard > 500:
            return None, pos
        page_off = get_tree_ptr(tree)
        if page_off is None:
            return None, pos
        shape_pos = PAGE + page_off
        symbol_ptr = shape_pos - 1
        tree_bits = 8
        tree_barrel = data[shape_pos]
        shape_pos += 1
        while (tree_barrel & 0x80) == 0:
            tree_barrel = (tree_barrel << 1) & 0xFF
            tree_bits -= 1
            if tree_bits == 0:
                tree_bits = 8
                tree_barrel = data[shape_pos]
                shape_pos += 1
            if bits == 0:
                if length <= 0:
                    return None, pos
                bits = 8
                barrel = data[pos]
                pos += 1
                length -= 1
            if (barrel & 0x80) != 0:
                skip = 1
                while skip:
                    if (tree_barrel & 0x80) == 0:
                        skip += 1
                    else:
                        skip -= 1
                        symbol_ptr -= 1
                    tree_barrel = (tree_barrel << 1) & 0xFF
                    tree_bits -= 1
                    if tree_bits == 0:
                        tree_bits = 8
                        tree_barrel = data[shape_pos]
                        shape_pos += 1
            barrel = (barrel << 1) & 0xFF
            bits -= 1
        symbol = data[symbol_ptr]
        out.append(symbol)
        tree = symbol
        if tree == EOS:
            break
    if any(b > EOS for b in out):
        return None, pos
    return out, pos


def load_all_messages():
    TABLES = [
        (0x203DE, 0x2135D), (0x2135D, 0x226E0), (0x226E0, 0x23B5C),
        (0x25284, 0x26581), (0x26581, 0x26C8E),
    ]
    all_msgs = []
    for addr, end in TABLES:
        p = addr
        while p < end:
            out, npos = decode_string(p)
            if out is None:
                raise ValueError('decode failed at 0x%05X' % p)
            all_msgs.append(out)
            # el limite real del mensaje lo marca el byte de longitud
            p += 1 + data[p]
    return all_msgs


def main():
    msgs = load_all_messages()
    print('Mensajes originales:', len(msgs))

    # 1) construir arboles desde el texto original (mismo algoritmo)
    counts = [[0] * 256 for _ in range(LIMIT)]
    for m in msgs:
        prev = EOS
        for b in m:
            counts[prev][b] += 1
            prev = b
    trees = []
    for t in range(LIMIT):
        trees.append(build_tree(counts[t]))

    # 2) generar bytes de arbol
    ptrs = []
    tree_bytes_all = bytearray()
    tree_start = []
    for t in range(LIMIT):
        tb = tree_to_bytes(trees[t])
        if not tb:
            ptrs.append(0xFFFF)
            tree_start.append(None)
        else:
            tree_start.append(len(tree_bytes_all))
            tree_bytes_all += tb
            # ptr = PAGE-offset + 0x4000; el pointer se calcula como:
            # shape_pos = PAGE + (v - 0x4000) -> v = (len) + 0x4000 (offset relativo a PAGE)
            off = tree_start[t] - 0  # offset dentro del area
            ptrs.append(off + 0x4000)

    # 3) comparar con los arboles de la ROM.
    # Para cada arbol con texto, la ROM almacena: symbols[rev] + shape.
    # Reconstruir el arbol que hay en la ROM y comparar con el generado.
    matches = 0
    mismatches = []
    for t in range(LIMIT):
        v_rom = data[TREE_TBL + t * 2] | (data[TREE_TBL + t * 2 + 1] << 8)
        if v_rom == 0xFFFF:
            if trees[t] is None:
                matches += 1
            else:
                mismatches.append((t, 'ROM vacio, encoder tiene arbol'))
            continue
        # localizar en ROM: shape comienza en PAGE + (v_rom - 0x4000)
        shape_rom = PAGE + (v_rom - 0x4000)
        # contar hojas recorriendo el shape (1 = hoja, 0 = interno)
        stack = 1
        tmp_bits = 8
        tmp_acc = data[shape_rom]
        p = shape_rom + 1
        leaves_seen = 0
        while stack:
            b = (tmp_acc & 0x80) != 0
            tmp_acc = (tmp_acc << 1) & 0xFF
            tmp_bits -= 1
            if tmp_bits == 0:
                tmp_bits = 8
                tmp_acc = data[p]
                p += 1
            if b:
                stack -= 1
                leaves_seen += 1
            else:
                stack += 1
        rom_shape_bytes = bytes(data[shape_rom:p])
        rom_syms_bytes = bytes(reversed(data[shape_rom - leaves_seen:shape_rom]))
        # arbol generado
        g = tree_to_bytes(trees[t])
        n_syms = count_leaves(trees[t])
        gen_shape = g[n_syms:]
        gen_syms = g[:n_syms]
        if rom_shape_bytes == gen_shape and rom_syms_bytes == gen_syms:
            matches += 1
        else:
            mismatches.append((t, 'byte diff (rom_syms=%d rom_shape=%d gen_syms=%d gen_shape=%d)'
                              % (len(rom_syms_bytes), len(rom_shape_bytes), len(gen_syms), len(gen_shape))))

    print('Arboles coinciden con ROM: %d / %d' % (matches, LIMIT))
    for t, why in mismatches[:15]:
        print('  MISMATCH tree %02X: %s' % (t, why))

    # 4) codificar mensajes originales y comprobar longitud vs original
    total_orig = 0
    total_enc = 0
    TABLES = [
        (0x203DE, 0x2135D), (0x2135D, 0x226E0), (0x226E0, 0x23B5C),
        (0x25284, 0x26581), (0x26581, 0x26C8E),
    ]
    idx = 0
    for addr, end in TABLES:
        p = addr
        while p < end:
            length = data[p]
            out, npos = decode_string(p)
            enc = encode_msg(out, trees, ptrs)
            total_orig += length + 1
            total_enc += len(enc) + 1
            idx += 1
            p = npos + 1
    print('Original total (con longitud): %d bytes' % total_orig)
    print('Re-codificado total (con longitud): %d bytes' % total_enc)


def count_leaves(root):
    if root is None:
        return 0
    if root.left is None and root.right is None:
        return 1
    return count_leaves(root.left) + count_leaves(root.right)


def syms_rev_of(root):
    out = []

    def walk(n):
        if n.left is None and n.right is None:
            out.append(n.item)
        else:
            walk(n.left)
            walk(n.right)
    if root is not None:
        walk(root)
    return out


if __name__ == '__main__':
    main()
