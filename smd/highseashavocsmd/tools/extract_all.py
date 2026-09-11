"""Extractor único de todos los textos de High Seas Havoc (USA).

Script autocontenido (un solo archivo): incluye el decoder LZ de la intro y
la lógica de tabla, lee el ROM desde la raíz del repo y extrae todos los
bloques de texto conocidos a tr_text.json:

    intro    -> bloque LZ @0x0A2681 (16 páginas, 0x80=LF, 0xFF=fin)
    stage    -> ASCII separado por 0xFF, fin 0x00  @0x02E7A
    menu     -> cabecera 'Nu' + cadenas fijas          @0x019996
    songs    -> 29 slots fijos de 0x1C                 @0x03CDBA
    gameover -> cabecera 'Nu' + CONTINUE/END           @0x070FC

El texto usa los caracteres de la tabla ([LF], [END]). Se preservan los
`translated` ya existentes en tr_text.json (la extracción solo refresca
`rom_offset`/`original`).

Uso:
    python tools/extract_all.py                 # extrae todo a tr_text.json
    python tools/extract_all.py --block intro   # solo un bloque
    python tools/extract_all.py --out dumps/all_text.txt  # volcado legible extra
"""
import argparse
import json
import sys
from pathlib import Path

TOOLS = Path(__file__).resolve().parent
REPO = TOOLS.parent
ROM = REPO / "High Seas Havoc (USA) (En,Ja).md"
TBL = TOOLS / "main.tbl"
JSON_PATH = REPO / "text.json"

# --- bloques conocidos: label -> (addr, metodo, meta, extra) -----------------
BLOCKS = {
    "intro":    {"addr": 0x0A2681, "method": "story", "note": "LZ intro (16 strings, 0x80=LF, 0xFF=end)"},
    "stage":    {"addr": 0x02E7A,  "method": "flat_ff", "note": "ASCII, sep 0xFF, end 0x00"},
    "menu":     {"addr": 0x019996, "method": "merged", "note": "'Nu' + fixed strings",
                 "strings": ["PRESS START BUTTON", "GAME START", "ORCHESTRA",
                             "@ 1993 DATA EAST CORPORATION.",
                             "LICENSED BY SEGA ENTERPRISES LTD.", "OPTIONS"]},
    "songs":    {"addr": 0x03CDBA, "method": "flat_fixed",
                 "note": "29 slots x 0x1C (tabla de 29 punteros @0x03CD46)",
                 "slot": 0x1C, "n": 29},
    "gameover": {"addr": 0x070FC,  "method": "merged", "note": "'Nu' + fixed strings",
                 "strings": ["CONTINUEEND"]},
}

STORY_START = 0xA2681
STORY_TEXT_OFF = 0x42B

# fuente de la intro (glifos 4bpp 8x8, 59 tiles) -> raw intro_font.gfx en la raiz
FONT_ADDR = 0x0A0746
FONT_DEC_LEN = 1888
FONT_GFX = REPO / "intro_font.gfx"


# --- LZ decoder (espejo de 0x1AAC) ------------------------------------------
def lz(data):
    """Descomprime un bloque LZ. Devuelve (bytes, pos_fin, d7_restante)."""
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


def extract_font(rom):
    """Descomprime la fuente de la intro (LZ @0x0A0746) y la escribe en la raiz
    como intro_font.gfx (raw 4bpp 8x8, 59 tiles = 1888 bytes)."""
    raw, used, d7 = lz(rom[FONT_ADDR:])
    if len(raw) != FONT_DEC_LEN or d7 != 0:
        print("  !! font: dec=%d (esperado %d) used=0x%X d7=%d"
              % (len(raw), FONT_DEC_LEN, used, d7))
    FONT_GFX.write_bytes(raw)
    print("font: %d tiles (%d bytes) @0x%06X -> %s"
          % (len(raw) // 32, len(raw), FONT_ADDR, FONT_GFX))
    return raw


# --- tabla de caracteres -----------------------------------------------------
_BUILTIN = {
    0xFF: "[END]", 0x80: "[LF]",
    0x20: " ", 0x21: "!", 0x22: '"', 0x23: "#", 0x24: "$", 0x25: "%",
    0x26: "&", 0x27: "'", 0x28: "(", 0x29: ")", 0x2A: "*", 0x2B: "+",
    0x2C: ",", 0x2D: "-", 0x2E: ".", 0x2F: "/",
    0x30: "0", 0x31: "1", 0x32: "2", 0x33: "3", 0x34: "4", 0x35: "5",
    0x36: "6", 0x37: "7", 0x38: "8", 0x39: "9",
    0x3A: ":", 0x3B: ";", 0x3C: "<", 0x3D: "=", 0x3E: ">", 0x3F: "?",
    0x40: "@", 0x41: "A", 0x42: "B", 0x43: "C", 0x44: "D", 0x45: "E",
    0x46: "F", 0x47: "G", 0x48: "H", 0x49: "I", 0x4A: "J", 0x4B: "K",
    0x4C: "L", 0x4D: "M", 0x4E: "N", 0x4F: "O", 0x50: "P", 0x51: "Q",
    0x52: "R", 0x53: "S", 0x54: "T", 0x55: "U", 0x56: "V", 0x57: "W",
    0x58: "X", 0x59: "Y", 0x5A: "Z",
    0x5B: "[", 0x5C: "\\", 0x5D: "]", 0x5E: "^", 0x5F: "_",
}


def load_table():
    """Carga story.tbl si existe; si no, usa la tabla ASCII interna."""
    if TBL.exists():
        fwd = {}
        for line in TBL.read_text(encoding="utf-8").splitlines():
            if not line.strip() or line.lstrip().startswith("#"):
                continue
            key, _, val = line.partition("=")
            if _ == "":
                continue
            try:
                bs = bytes(int(k, 16) for k in key.strip().split())
            except ValueError:
                continue
            fwd[bs] = val
        if fwd:
            return fwd
    return {bytes([k]): v for k, v in _BUILTIN.items()}


def render(bs, fwd):
    """Bytes -> texto con caracteres de la tabla (mayor coincidencia primero)."""
    items = sorted(fwd.items(), key=lambda kv: len(kv[0]), reverse=True)
    out = []
    i = 0
    while i < len(bs):
        for bkey, txt in items:
            if bs[i:i + len(bkey)] == bkey:
                out.append(txt)
                i += len(bkey)
                break
        else:
            out.append("[%02X]" % bs[i])
            i += 1
    return "".join(out)


# --- extractores por método: devuelven [(offset_real, texto)] ----------------
def parse_story(rom, blk, fwd):
    raw, _pos, _left = lz(rom[STORY_START:])
    msgs = []
    cur = []
    start = STORY_TEXT_OFF
    for b in raw[start:]:
        if b == 0xFF:
            cur.append("[END]")
            msgs.append((start, "".join(cur)))
            cur = []
            start += 1
        elif b == 0x80:
            cur.append("[LF]")
            start += 1
        elif 0x20 <= b < 0x7F:
            cur.append(chr(b))
            start += 1
        else:
            break  # fin de la zona de texto (data binaria a continuación)
    if cur:
        msgs.append((start, "".join(cur)))
    return msgs


def parse_flat_ff(rom, blk, fwd):
    data = rom[blk["addr"]:blk["addr"] + 0x400]
    msgs = []
    cur = []
    off = 0
    for b in data:
        if b == 0xFF:
            if cur:
                msgs.append((off - len(cur), render(bytes(cur), fwd)))
                cur = []
        elif b == 0x00:
            break
        else:
            cur.append(b)
        off += 1
    return msgs


def parse_flat_fixed(rom, blk, fwd):
    slot, n = blk["slot"], blk["n"]
    msgs = []
    for i in range(n):
        raw = rom[blk["addr"] + i * slot:blk["addr"] + (i + 1) * slot]
        msgs.append((i * slot, render(bytes(raw), fwd).rstrip(" ")))
    return msgs


def parse_merged(rom, blk, fwd):
    window = bytes(rom[blk["addr"]:blk["addr"] + 0x400])
    msgs = []
    for s in blk["strings"]:
        idx = window.find(s.encode())
        msgs.append((max(idx, 0), s))
    return msgs


PARSERS = {
    "story": parse_story,
    "flat_ff": parse_flat_ff,
    "flat_fixed": parse_flat_fixed,
    "merged": parse_merged,
}


# --- salida a tr_text.json ---------------------------------------------------
def messages_to_json(msgs):
    """[(offset, texto)] -> {idx: {rom_offset, original}}"""
    return {
        str(i): {"rom_offset": "0x%04X" % off, "original": text}
        for i, (off, text) in enumerate(msgs)
    }


def extract_all(rom, fwd, only=None):
    """Extrae todos los bloques (o solo 'only') -> {label: [(off, texto)]}."""
    out = {}
    for label, blk in BLOCKS.items():
        if only and label != only:
            continue
        out[label] = PARSERS[blk["method"]](rom, blk, fwd)
    return out


def build_json(result, prev_blocks):
    """Construye la estructura de tr_text.json preservando los 'translated'."""
    db = {
        "schema": 1,
        "comment": "Traduccion ES de High Seas Havoc (USA). Fuente de verdad unica.",
        "blocks": {},
    }
    for label, msgs in result.items():
        blk = BLOCKS[label]
        prev_msgs = prev_blocks.get(label, {}).get("messages", {})
        entry = {
            "rom_address": "0x%06X" % blk["addr"],
            "method": blk["method"],
            "note": blk["note"],
        }
        entry["messages"] = {}
        for i, (off, text) in enumerate(msgs):
            idx = str(i)
            prev = prev_msgs.get(idx, {})
            entry["messages"][idx] = {
                "rom_offset": "0x%04X" % off,
                "original": text,
                "translated": prev.get("translated", ""),
            }
        db["blocks"][label] = entry
    return db


def write_dump(result, path):
    lines = []
    lines.append("# High Seas Havoc (USA) (En,Ja) - extraccion de textos")
    lines.append("# tabla: %s" % ("emulator/story.tbl" if TBL.exists() else "interna"))
    lines.append("")
    for label, msgs in result.items():
        blk = BLOCKS[label]
        lines.append("## %s  (metodo=%s, addr=0x%06X, %d mensajes)"
                     % (label, blk["method"], blk["addr"], len(msgs)))
        for off, txt in msgs:
            lines.append("### %s (off 0x%04X)" % (label, off))
            lines.append(txt)
            lines.append("")
    path.parent.mkdir(exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--block", default=None,
                    help="solo un bloque: %s" % ", ".join(BLOCKS))
    ap.add_argument("--out", default=None,
                    help="ademas, escribe un volcado legible (p.ej. dumps/all_text.txt)")
    args = ap.parse_args()

    if not ROM.exists():
        print("ROM no encontrado:", ROM)
        sys.exit(1)

    rom = ROM.read_bytes()
    extract_font(rom)
    fwd = load_table()
    result = extract_all(rom, fwd, only=args.block)

    for label, msgs in result.items():
        print("%s: %d mensajes" % (label, len(msgs)))

    prev = {}
    if JSON_PATH.exists():
        try:
            prev = json.loads(JSON_PATH.read_text(encoding="utf-8"))
        except json.JSONDecodeError:
            prev = {}
    prev_blocks = prev.get("blocks", {})
    db = build_json(result, prev_blocks)
    # preserve blocks NOT extracted this run (p.ej. `--block songs` no debe
    # borrar intro/stage/menu/gameover del JSON)
    for label in BLOCKS:
        if label not in db["blocks"] and label in prev_blocks:
            db["blocks"][label] = prev_blocks[label]
    JSON_PATH.write_text(
        json.dumps(db, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print("\nescrito:", JSON_PATH)

    if args.out:
        path = write_dump(result, Path(args.out))
        print("volcado legible:", path)

    if args.block and len(result) == 1:
        label = next(iter(result))
        for off, txt in result[label]:
            print("\n--- %s (off 0x%04X) ---" % (label, off))
            print(txt)


if __name__ == "__main__":
    main()
