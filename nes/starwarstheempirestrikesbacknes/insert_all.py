#!/usr/bin/env python3
"""insert_all.py - Inserta texts_translated.json en la ROM base.

Genera TR_<rom>. Partiendo SIEMPRE de la ROM base:
  * Reconstruye cada bloque (<nl> = salto de linea, 0xFF = fin de bloque).
  * [HH] inserta el byte HH.
  * Bloque 'dialogue': reubicable; si el pool crece se mueve entero a un hueco
    libre del banco 5 y se actualizan sus punteros.
  * Bloques 'screens' y 'crawl': se reescriben EN SU SITIO (la ROM no se
    expande; ver insert_screens/insert_crawl).
  * Solo usa las tablas main_insert*.tbl (no hace conversiones fuera de ellas).
"""
import json
import os
import sys

import compress    # modulo del formato de pantallas comprimidas (misma carpeta)

HERE = os.path.dirname(os.path.abspath(__file__))

ROM_NAME = "Star Wars - The Empire Strikes Back (USA).nes"
TBL_INSERT = "main_insert.tbl"
TBL_INSERT2 = "main_insert2.tbl"
TBL_INSERT3 = "main_insert3.tbl"
IN_JSON = "texts_translated.json"

BANK5_BASE = 0x14010
BANK5_WINDOW = 0x8000
BANK5_START = 0x14010
BANK5_END = 0x18010

# Bloque del crawl (intro y texto final): stream de indices de bigramas del
# banco 5. No se reubica: cada fila se reescribe en su offset (16 indices).
CRAWL_BLOCK = "crawl"
CRAWL_ROW = 16                      # indices (bigramas) por fila = 32 caracteres
CRAWL_DICT_CPU = 0x8802             # CPU: entrada k -> $8802 + 4*k (2 utiles)
CRAWL_DICT_STRIDE = 4
CRAWL_SCAN = (0x8010, 0x8800)       # CPU: zona del stream del crawl
# El motor del crawl sombrea cada celda con la clase `(b >> 2) & 3` del byte que
# hay en $8B9C + ranura (rutina $F134-$F15C: `lda ($77),Y` con Y = ranura y la
# tabla de valores $F2F0). Esa tabla se SOLAPA con el final del diccionario:
# $8B9C = $8802 + 922, o sea los bytes 2-3 de la entrada 230 y las entradas
# 231-255 ENTERAS son datos de color, no bigramas. Reglas al insertar:
#   * no se escribe ningun byte del diccionario a partir del offset 922;
#   * el texto normal va a ranuras de clase 0; el de las filas que la ROM base
#     destaca (clase 1) va a ranuras de clase 1, que salen en blanco (ver mas
#     abajo: son las dos ultimas filas del crawl final).
# Las ranuras 12-25 (clase 1) son las filas de graficos del titulo: de ahi que
# el titulo salga a dos tonos. Comprobado en el emulador (work/plan_crawl*.py).
CRAWL_COLOR_TABLE = 0x8B9C           # CPU: tabla de color (tabla[$8B9C + ranura])
CRAWL_COLOR_REL = CRAWL_COLOR_TABLE - CRAWL_DICT_CPU    # 922: bytes intocables
# A partir de esta ranura el byte de clase cae FUERA del diccionario
# ($8B9C + 102 = $8C02), asi que se puede cambiar la clase de la ranura sin
# pisar la entrada de ningun bigrama. Se usa para las ranuras promocionadas.
CRAWL_CLASS_SAFE = 102

# Bloque de creditos del crawl: otra tira de filas del MISMO motor, con los
# punteros cambiados. El codigo del banco 5 los carga en la pagina 3 / columna
# $40 ($B956-$B979) y vuelve al crawl en la 5 / $A0 ($B984-$B9A2):
#
#   $71/$72  diccionario de bigramas = $8C83 (entrada k -> $8C83 + 4*k)
#   $75/$76  stream de filas        = $8600 (16 indices por fila)
#   $77/$78  tabla de color         = $8ED7 (byte por indice; bits 2-3 = clase)
#
# La rutina de dibujo ($F19C-$F1B5, $F220-$F234) lee la MITAD (0-1 o 2-3) que
# elige el bit 3 de $3D y escribe los dos caracteres de la celda, asi que cada
# entrada guarda dos bigramas: la version que se ve depende de la fase con que
# el motor dibujo esa fila. La tabla de color empieza en $8ED7 = $8C83 + 596, o
# sea que las entradas 0..148 son las unicas utilizables: a partir de la 149 la
# entrada cae DENTRO de la tabla de color (por eso la ROM base solo llega a la
# 147; 0 es la celda en blanco).
CREDITS_BLOCK = "credits"
CREDITS_ROW = 16                    # indices (bigramas) por fila = 32 caracteres
CREDITS_DICT_CPU = 0x8C83           # CPU: entrada k -> $8C83 + 4*k (4 utiles)
CREDITS_DICT_STRIDE = 4
CREDITS_COLOR_TABLE = 0x8ED7        # CPU: tabla de color (1 byte por indice)
CREDITS_COLOR_REL = CREDITS_COLOR_TABLE - CREDITS_DICT_CPU     # 596
CREDITS_SLOTS = CREDITS_COLOR_REL // CREDITS_DICT_STRIDE        # 149 (0..148)
CREDITS_STREAM = (0x8600, 0x8800)   # CPU: zona de filas de los creditos

# Nombre del bloque que se reconstruye como un unico pool reubicable.
DIALOGUE_BLOCK = "dialogue"
# Pantallas comprimidas (creditos, logo, crawl 1...): cada mensaje es una
# pantalla de 1024 bytes (nametable + atributos) que se recompone y se vuelve a
# comprimir. Su texto va dentro del flujo comprimido, por eso NO es un bloque de
# texto con terminador: se extrae/inserta como nametable.
SCREEN_BLOCK = "screens"
SCREEN_SIZE = 1024
SCREEN_COLS = 32
SCREEN_ROWS = SCREEN_SIZE // SCREEN_COLS
# Tabla de pantallas en el banco fijo ($CA96 -> 0x3CAA6 con cabecera): 4 bytes
# por ranura [parametro, banco PRG, puntero_lo, puntero_hi]. Solo las pantallas
# 0 (creditos) y 1 (crawl de intro) llevan texto; el resto son graficos.
SCREEN_TABLE = 0x3CAA6
SCREEN_SLOTS = 20
SCREEN_STRIDE = 4
# Secciones de texto fijo: se reconstruyen juntas como un pool contiguo.
FIXED_POOL = ["sound_music", "sound_sfx", "sound_digital"]

# Tabla de insercion que usa cada bloque (para el preflight de caracteres).
BLOCK_TBL = {
    DIALOGUE_BLOCK: TBL_INSERT,
    "sound_music": TBL_INSERT,
    "sound_sfx": TBL_INSERT,
    "sound_digital": TBL_INSERT,
    SCREEN_BLOCK: TBL_INSERT2,
    CRAWL_BLOCK: TBL_INSERT3,
    CREDITS_BLOCK: TBL_INSERT3,
}

# Bloques con dos bigramas por celda (dos versiones): el preflight de
# caracteres tiene que mirar tambien el segundo texto.
BLOCK_TEXT_FIELDS = {CREDITS_BLOCK: ("translated", "translated_v1")}


def load_insert_tbl(path):
    """Carga caracter=HH a un diccionario str -> byte."""
    table = {}
    with open(path, "r", encoding="utf-8") as fh:
        for line in fh.read().splitlines():
            if not line or line.startswith("#") or "=" not in line:
                continue
            ch, hx = line.rsplit("=", 1)
            if ch == "":
                continue
            try:
                table[ch] = int(hx, 16)
            except ValueError:
                continue
    return table


def encode(text, table, tbl_name=TBL_INSERT):
    """Codifica texto a bytes con terminador 0xFF.

    '<nl>' -> 0x00 (salto de linea); tambien se acepta un '\n' literal.
    tbl_name solo se usa para el mensaje de error.
    """
    out = bytearray()
    i = 0
    while i < len(text):
        if text.startswith("<nl>", i):
            out.append(0x00)
            i += 4
            continue
        c = text[i]
        if c == "\n":
            out.append(0x00)
            i += 1
        elif c == "[":
            j = text.find("]", i)
            if j < 0:
                raise ValueError("escape '[' sin cerrar")
            hexs = text[i + 1:j]
            out.append(int(hexs, 16))
            i = j + 1
        elif c in table:
            out.append(table[c])
            i += 1
        else:
            raise ValueError("caracter sin mapeo en %s: %r" % (tbl_name, c))
    out.append(0xFF)
    return bytes(out)


def addr(x):
    return "0x%06X" % x


def text_chars(text):
    """Caracteres de un texto, saltando '<nl>' y los escapes '[HH]'."""
    i = 0
    while i < len(text):
        if text.startswith("<nl>", i):
            i += 4
        elif text[i] == "\n":
            i += 1
        elif text[i] == "[":
            j = text.find("]", i)
            i = len(text) if j < 0 else j + 1
        else:
            yield text[i]
            i += 1


def screen_table(msg, default):
    """Tabla de insercion de una pantalla del bloque 'screens'.

    Cada pantalla con texto usa la fuente de SUS bancos CHR, asi que el mensaje
    lleva su propia tabla en el campo 'table' (main_insert2.tbl para las
    pantallas de creditos/intro, main_insert4..7.tbl para el resto).
    """
    name = msg.get("table")
    if name is None:
        return default
    if name.startswith("main_extract"):
        name = "main_insert" + name[len("main_extract"):]
    if name not in LOADED_TABLES:
        LOADED_TABLES[name] = load_insert_tbl(os.path.join(HERE, name))
    return name


def missing_chars(blocks, tables):
    """Devuelve {tabla: {caracter: n_mensajes}} para los caracteres sin mapeo.

    Se recorren todos los bloques antes de insertar nada: asi el usuario ve de
    una vez TODOS los caracteres que faltan en cada .tbl (el script sigue sin
    insertar nada hasta que existan los mapeos). En el bloque 'screens' cada
    pantalla puede usar una tabla distinta (su propia fuente).
    """
    miss = {name: {} for name in tables.values()}
    for block_name, block in blocks.items():
        tbl_name = tables.get(block_name)
        if tbl_name is None:
            continue
        for key, msg in block["messages"].items():
            name = (screen_table(msg, tbl_name)
                    if block_name == SCREEN_BLOCK else tbl_name)
            miss.setdefault(name, {})
            table = LOADED_TABLES[name]
            fields = BLOCK_TEXT_FIELDS.get(block_name, ("translated",))
            for field in fields:
                for ch in text_chars(msg.get(field) or ""):
                    if ch not in table:
                        miss[name].setdefault(ch, set()).add(block_name)
    return miss


def parse_addr(s):
    return int(s, 16)


LOADED_TABLES = {}


def report_missing(missing):
    """Texto del informe del preflight, ordenado por tabla y frecuencia."""
    lines = []
    for tbl_name in (TBL_INSERT, TBL_INSERT2, TBL_INSERT3):
        found = missing.get(tbl_name) or {}
        if not found:
            continue
        chars = sorted(found, key=lambda c: (-len(found[c]), c))
        lines.append("  %s: %d caracteres" % (tbl_name, len(chars)))
        for ch in chars:
            where = ", ".join(sorted(found[ch]))
            lines.append("    %r (U+%04X) en %s" % (ch, ord(ch), where))
    return "\n".join(lines)


def encode_screen(text, table, name):
    """Codifica el texto de una pantalla (32 filas de 32 caracteres) a 1024 bytes.

    Cada fila es una linea de la nametable; los escapes [HH] escriben ese byte.
    """
    lines = text.split("\n")
    if len(lines) != SCREEN_ROWS:
        sys.exit("ERROR: la pantalla %s debe tener %d filas y tiene %d"
                 % (name, SCREEN_ROWS, len(lines)))
    out = bytearray()
    for i, line in enumerate(lines):
        j = 0
        row = bytearray()
        while j < len(line):
            c = line[j]
            if c == "[":
                k = line.find("]", j)
                if k < 0:
                    sys.exit("ERROR: la pantalla %s, fila %d: escape '[' sin "
                             "cerrar" % (name, i))
                row.append(int(line[j + 1:k], 16))
                j = k + 1
            elif c in table:
                row.append(table[c])
                j += 1
            else:
                sys.exit("ERROR: caracter sin mapeo en %s: %r (pantalla %s, "
                         "fila %d)" % (TBL_INSERT2, c, name, i))
        if len(row) != SCREEN_COLS:
            sys.exit("ERROR: la pantalla %s, fila %d ocupa %d bytes (deben ser "
                     "%d)" % (name, i, len(row), SCREEN_COLS))
        out += row
    if len(out) != SCREEN_SIZE:
        sys.exit("ERROR: la pantalla %s da %d bytes (deben ser %d)"
                 % (name, len(out), SCREEN_SIZE))
    return bytes(out)


def find_block_end(data, start):
    end = data.find(b"\xff", start)
    if end < 0:
        raise ValueError("sin terminador 0xFF en %s" % addr(start))
    return end + 1


def find_free_hole(data, size, avoid):
    """Primer hueco de ceros en el banco 5 con tamano >= size, sin solapar avoid."""
    i = BANK5_START
    while i < BANK5_END:
        if data[i] == 0x00:
            j = i
            while j < BANK5_END and data[j] == 0x00:
                j += 1
            if j - i >= size and not (i < avoid[1] and j > avoid[0]):
                return i
            i = j
        else:
            i += 1
    return None


def crawl_offsets(cpu):
    """Convierte una direccion CPU del banco 5 a offset PRG (fichero)."""
    return BANK5_BASE + (cpu - BANK5_WINDOW)


def credits_writable(k):
    """La entrada k del diccionario de creditos cabe antes de la tabla de color?"""
    return k * CREDITS_DICT_STRIDE + CREDITS_DICT_STRIDE <= CREDITS_COLOR_REL


def credits_entry(data, k):
    """Los 4 bytes de la entrada k del diccionario de creditos."""
    o = crawl_offsets(CREDITS_DICT_CPU) + k * CREDITS_DICT_STRIDE
    return bytes(data[o:o + CREDITS_DICT_STRIDE])


def credits_shade(data, k):
    """Clase de color (0-3) que el motor le da al indice k."""
    o = crawl_offsets(CREDITS_DICT_CPU) + CREDITS_COLOR_REL + k
    return (data[o] >> 2) & 3


def credits_unit(data, k):
    """(clase, bigrama version 0, bigrama version 1) del indice k."""
    e = credits_entry(data, k)
    return (credits_shade(data, k), e[0:2], e[2:4])


def insert_crawl(base, block, table):
    """Reescribe el bloque 'crawl': diccionario de bigramas + stream de filas.

    El motor lee 16 indices por fila del banco 5; cada indice apunta a una
    entrada de 2 caracteres del diccionario ($8802, paso 4). Al traducir hay que
    reconstruir el diccionario, porque los bigramas del texto traducido no son
    los del original. Las entradas que usan las filas que NO estan en el bloque
    (graficos y copia de paridad del stream) se conservan en su indice.
    Devuelve el numero de mensajes modificados.
    """
    msgs = sorted(block["messages"].values(),
                  key=lambda m: parse_addr(m["text_offset"]))
    if not any(m["translated"] != m["original"] for m in msgs):
        return 0    # sin cambios: no se toca el banco (round-trip byte a byte)

    dict_off = crawl_offsets(CRAWL_DICT_CPU)

    def entry(k):
        return bytes(base[dict_off + k * CRAWL_DICT_STRIDE:
                          dict_off + k * CRAWL_DICT_STRIDE + 2])

    def writable(k):
        """Se puede reescribir esta entrada sin pisar la tabla de color?"""
        return k * CRAWL_DICT_STRIDE + 2 <= CRAWL_COLOR_REL

    def shade(k):
        """Clase de color que el motor le da a esta ranura (0 = tono normal)."""
        return (base[dict_off + CRAWL_COLOR_REL + k] >> 2) & 3

    def set_shade(k, cls):
        """Cambia la clase de color de una ranura (solo si es seguro)."""
        if k < CRAWL_CLASS_SAFE:
            sys.exit("ERROR: la clase de la ranura %d vive dentro del "
                     "diccionario: no se puede reescribir." % k)
        base[dict_off + CRAWL_COLOR_REL + k] = (cls & 3) << 2

    rows = []
    for m in msgs:
        text = m["translated"]
        if len(text) > CRAWL_ROW * 2:
            sys.exit("ERROR: la fila %s del bloque '%s' tiene %d caracteres "
                     "(maximo %d)" % (m["text_offset"], CRAWL_BLOCK, len(text),
                                      CRAWL_ROW * 2))
        rows.append((parse_addr(m["text_offset"]),
                     text + " " * (CRAWL_ROW * 2 - len(text))))

    def encode_pair(pair):
        try:
            return bytes(table[c] for c in pair)
        except KeyError as exc:
            sys.exit("ERROR: caracter sin mapeo en %s: %r" % (TBL_INSERT3, exc.args))

    # 0) clase de color que necesita cada celda del texto traducido.
    #    El motor saca el atributo de color de los bits 2-3 del byte de
    #    `$8B9C + ranura`, asi que el tono de una celda lo decide la ranura que
    #    se le asigna, no el texto. La ROM base tiene en clase 0 todas las filas
    #    del crawl menos las dos ultimas del final ("TIME WILL COME FOR..." /
    #    "THE RETURN OF THE JEDI."), que van en clase 1 y por eso salen en
    #    blanco: al traducir hay que mantener ese reparto o el crawl queda de un
    #    solo color y se pierde el remate del final.
    highlight = set()
    for off, text in rows:
        lit = [shade(k) for i, k in enumerate(base[off:off + CRAWL_ROW])
               if text[2 * i:2 * i + 2] != "  "]
        if lit and 2 * sum(1 for c in lit if c) > len(lit):
            highlight.add(off)      # fila destacada en la ROM base

    def want_class(off, pair):
        """Clase 1 (blanco) solo en las filas destacadas y celdas con texto."""
        return 1 if (off in highlight and pair != "  ") else 0

    # 1) (bigrama, clase) distintos que necesita el texto, en orden de aparicion.
    #    Un mismo bigrama puede necesitar dos ranuras: una de clase 0 para las
    #    filas normales y otra de clase 1 para las filas destacadas.
    need = []
    for off, text in rows:
        for i in range(CRAWL_ROW):
            pair = text[2 * i:2 * i + 2]
            key = (encode_pair(pair), want_class(off, pair))
            if key not in need:
                need.append(key)

    # 2) indices fijados: los que usan las filas del stream que NO estan en el
    #    bloque y no son texto del crawl (filas de graficos y de otras tablas).
    #    Las filas de texto fuera del bloque son una copia ANTIGUA del mismo
    #    texto (con erratas: "EEN DEROYED" por "BEEN DESTROYED"); no se fijan
    #    para no gastar indices, que son el recurso escaso del diccionario.
    in_block = {off for off, _ in rows}
    legit = set()
    for pair, _ in need:
        legit.update(pair)          # todos los bytes de caracter que se usan
    pinned = set()
    stale = set()
    for off in range(crawl_offsets(CRAWL_SCAN[0]),
                     crawl_offsets(CRAWL_SCAN[1]), CRAWL_ROW):
        if off in in_block:
            continue
        cells = list(base[off:off + CRAWL_ROW])
        if all(all(b in legit for b in entry(k)) for k in cells):
            stale.update(cells)
        else:
            pinned.update(cells)

    # 3) asignacion (bigrama, clase) -> indice
    assign = {}
    reused = 0
    # Reutilizar una entrada fijada solo si su ranura tiene ya la clase que
    # necesita el bigrama (si no, se veria del tono equivocado) y es escribible.
    for k in sorted(pinned):
        key = (entry(k), shade(k))
        if key in need and key not in assign and writable(k):
            assign[key] = k
            reused += 1

    def pool(cls):
        return [k for k in range(256)
                if writable(k) and shade(k) == cls
                and k not in pinned and k not in assign.values()]

    free = {0: pool(0), 1: pool(1)}   # ranuras libres del tono normal y blanco
    promoted = 0
    for key in need:
        if key in assign:
            continue
        cls = key[1]
        if free[cls]:
            assign[key] = free[cls].pop(0)
            continue
        if cls == 1:
            # La ROM base solo marca 19 ranuras de clase 1 y las filas
            # destacadas de la traduccion necesitan mas: se promociona una
            # ranura libre sin tocar ninguna entrada de bigrama.
            cand = [k for k in free[0] if k >= CRAWL_CLASS_SAFE]
            if not cand:
                sys.exit("ERROR: no hay ranuras libres para destacar el texto "
                         "del bloque '%s'." % CRAWL_BLOCK)
            k = cand[0]
            free[0].remove(k)
            set_shade(k, 1)
            assign[key] = k
            promoted += 1
            continue
        sys.exit("ERROR: el bloque '%s' necesita %d bigramas y solo hay "
                 "%d ranuras utilizables (las demas las usan las filas de "
                 "graficos, la copia de paridad del stream o la tabla de "
                 "color del motor en $%04X)."
                 % (CRAWL_BLOCK, len(need), len(assign), CRAWL_COLOR_TABLE))

    # 4) diccionario: se mantienen las entradas fijadas y se reasignan las libres
    by_index = {k: p for (p, _), k in assign.items()}
    for k in range(256):
        if not writable(k):
            continue            # datos de la tabla de color: intocables
        if k in pinned and k not in by_index:
            continue
        o = dict_off + k * CRAWL_DICT_STRIDE
        base[o:o + 2] = by_index.get(k, b"\xff\xff")

    # 5) stream: 16 indices por fila
    changed = 0
    for m in msgs:
        if m["translated"] == m["original"]:
            continue
        changed += 1
    for off, text in rows:
        for i in range(CRAWL_ROW):
            pair = text[2 * i:2 * i + 2]
            base[off + i] = assign[(encode_pair(pair), want_class(off, pair))]

    # 6) verificacion: releer la ROM escrita y comparar los BYTES de cada fila.
    #    Se comparan bytes (no caracteres) porque la tabla de insercion puede
    #    ser lossy (p. ej. 'Á' y 'A' definidos al mismo glifo).
    for off, text in rows:
        exp = b"".join(encode_pair(text[2 * i:2 * i + 2])
                       for i in range(CRAWL_ROW))
        got = b"".join(bytes(base[dict_off + base[off + i] * CRAWL_DICT_STRIDE:
                                  dict_off + base[off + i] * CRAWL_DICT_STRIDE + 2])
                       for i in range(CRAWL_ROW))
        if got != exp:
            sys.exit("ERROR: verificacion '%s' fallo en %s\n  esperado %s\n"
                     "  obtenido %s" % (CRAWL_BLOCK, addr(off), exp.hex(), got.hex()))
        # y la clase de color de cada celda, que es lo que decide el tono
        for i in range(CRAWL_ROW):
            want = want_class(off, text[2 * i:2 * i + 2])
            gotshade = shade(base[off + i])
            if gotshade != want:
                sys.exit("ERROR: verificacion del color '%s' fallo en %s celda "
                         "%d: clase %d, se esperaba %d"
                         % (CRAWL_BLOCK, addr(off), i, gotshade, want))

    # Nota: la tabla de color del motor (%d bytes al final del diccionario) no se
    # toca en ningun momento; se comprueba comparando la ROM escrita con la base
    # en work/verify_crawl_colors.py.
    hl_cells = sum(1 for off, text in rows if off in highlight
                   for i in range(CRAWL_ROW)
                   if want_class(off, text[2 * i:2 * i + 2]) == 1)
    print("insert_all: bloque '%s': %d/%d filas traducidas, %d bigramas "
          "distintos (%d reutilizan indice fijado, %d en ranuras libres de "
          "clase 0). Filas destacadas (clase 1, en blanco): %s; %d celdas "
          "destacadas, %d ranuras promocionadas a clase 1. Indices fijados: "
          "%d; copia antigua del texto: %d indices."
          % (CRAWL_BLOCK, changed, len(rows), len(need), reused,
             len(need) - reused - hl_cells, [addr(o) for o in sorted(highlight)],
             hl_cells, promoted, len(pinned), len(stale)))

    return changed


def insert_credits(base, original, block, table):
    """Reescribe el bloque 'credits': diccionario de bigramas + filas del crawl.

    El motor del crawl cambia a este juego de punteros en la pagina 3 / columna
    $40 y vuelve al crawl en la 5 / $A0. Cada entrada del diccionario lleva DOS
    bigramas (bytes 0-1 = version 0, bytes 2-3 = version 1) porque el motor
    elige la mitad al dibujar la celda (bit 3 de $3D): la unidad que hay que
    repartir es (clase de color, bigrama v0, bigrama v1).

    Las filas que no se traducen se quedan BYTE A BYTE como estaban y sus
    entradas quedan FIJADAS en su indice (ni se reescriben ni se reutilizan para
    otro texto, porque su celda se lee con la clase que tienen). Las ranuras
    libres del reparto son las entradas que usaban SOLO las filas traducidas
    (su texto desaparece, asi que se pueden reescribir) mas las que la ROM base
    no usa (la 148); a partir de la 149 la entrada caeria dentro de la tabla de
    color $8ED7, que es intocable.

    Devuelve el numero de mensajes modificados.
    """
    msgs = sorted(block["messages"].values(),
                  key=lambda m: parse_addr(m["text_offset"]))

    def texts(m):
        """(texto version 0, texto version 1) del mensaje, ya validados."""
        out = []
        for field, orig in (("translated", "original"),
                            ("translated_v1", "original_v1")):
            text = m.get(field)
            if text is None:
                text = m.get(orig)
            out.append(text if text is not None else " " * (CREDITS_ROW * 2))
        return out

    rows = []
    for m in msgs:
        off = parse_addr(m["text_offset"])
        if not (crawl_offsets(CREDITS_STREAM[0]) <= off
                < crawl_offsets(CREDITS_STREAM[1])):
            sys.exit("ERROR: la fila %s del bloque '%s' esta fuera de la zona de "
                     "filas de los creditos ($%04X-$%04X)."
                     % (m["text_offset"], CREDITS_BLOCK, CREDITS_STREAM[0],
                        CREDITS_STREAM[1] - 1))
        t0, t1 = texts(m)
        for text in (t0, t1):
            if text.strip() and len(text) != CREDITS_ROW * 2:
                sys.exit("ERROR: la fila %s del bloque '%s' tiene %d caracteres "
                         "en una version con texto (deben ser %d exactos: el "
                         "margen forma parte del texto porque de el depende el "
                         "emparejamiento en bigramas; se recalcula con "
                         "work/make_credits_block.py)."
                         % (m["text_offset"], CREDITS_BLOCK, len(text),
                            CREDITS_ROW * 2))
        o0 = m.get("original")
        o1 = m.get("original_v1")
        changed = (o0 is None or t0 != o0) or (o1 is None or t1 != o1)
        rows.append((off, m, t0, t1, changed))
    in_block = {off for off, _, _, _, _ in rows}

    if not any(changed for _, _, _, _, changed in rows):
        return 0        # sin cambios: no se toca el banco (round-trip byte a byte)

    def entry(k):
        return credits_entry(base, k)

    def writable(k):
        return credits_writable(k)

    def shade(k):
        return credits_shade(base, k)

    def set_shade(k, cls):
        if not writable(k):
            sys.exit("ERROR: la clase del indice %d del bloque '%s' vive en la "
                     "tabla de color $%04X: no se puede reescribir."
                     % (k, CREDITS_BLOCK, CREDITS_COLOR_TABLE))
        base[crawl_offsets(CREDITS_DICT_CPU) + CREDITS_COLOR_REL + k] = \
            (cls & 3) << 2

    # ---------- 0) indices fijados ----------
    # El indice 0 es la celda en blanco del motor y no se toca nunca. Tambien
    # quedan fijados los indices que usan las filas del stream que NO estan en
    # el bloque y los que usan las filas del bloque que no se traducen.
    pinned = {0}
    for off in range(crawl_offsets(CREDITS_STREAM[0]),
                     crawl_offsets(CREDITS_STREAM[1]), CREDITS_ROW):
        if off in in_block:
            continue
        pinned.update(k for k in base[off:off + CREDITS_ROW] if k)
    used_by_changed = set()
    for off, m, t0, t1, changed in rows:
        cells = list(base[off:off + CREDITS_ROW])
        for k in cells:
            (used_by_changed if changed else pinned).add(k)
    pinned.discard(0)
    used_by_changed.discard(0)

    # ---------- 1) clase de color de cada fila ----------
    for off, m, t0, t1, changed in rows:
        cells = [k for k in base[off:off + CREDITS_ROW] if k]
        deriv = {shade(k) for k in cells}
        cls = m.get("class")
        if cls is None:
            if not deriv:
                sys.exit("ERROR: la fila %s del bloque '%s' no lleva 'class' y "
                         "la ROM base no tiene celdas de las que deducirla."
                         % (m["text_offset"], CREDITS_BLOCK))
            cls = sorted(deriv)[0]
        elif deriv and cls not in deriv:
            sys.exit("ERROR: la fila %s del bloque '%s' declara clase %d pero "
                     "las celdas de la ROM base estan en clase %s."
                     % (m["text_offset"], CREDITS_BLOCK, cls, sorted(deriv)))
        m["class"] = cls

    if not all(writable(k) for k in pinned):
        malos = sorted(k for k in pinned if not writable(k))
        sys.exit("ERROR: el bloque '%s' tiene filas sin traducir que usan los "
                 "indices %s, que caen dentro de la tabla de color $%04X."
                 % (CREDITS_BLOCK, malos, CREDITS_COLOR_TABLE))

    def encode_pair(pair):
        try:
            return bytes(table[c] for c in pair)
        except KeyError as exc:
            sys.exit("ERROR: caracter sin mapeo en %s: %r" % (TBL_INSERT3,
                                                              exc.args))

    # ---------- 2) unidades que necesita la traduccion ----------
    need = []
    for off, m, t0, t1, changed in rows:
        if not changed:
            continue
        for i in range(CREDITS_ROW):
            p0, p1 = t0[2 * i:2 * i + 2], t1[2 * i:2 * i + 2]
            if p0 == "  " and p1 == "  ":
                continue
            key = (m["class"], encode_pair(p0), encode_pair(p1))
            if key not in need:
                need.append(key)

    # ---------- 3) asignacion (clase, v0, v1) -> indice ----------
    assign = {}
    reused = 0
    for key in need:
        for k in range(1, CREDITS_SLOTS):
            if k in assign.values():
                continue
            if credits_unit(base, k) == key:
                assign[key] = k
                reused += 1
                break
    free = [k for k in range(1, CREDITS_SLOTS)
            if k not in pinned and k not in assign.values()]
    nlibres = len(free) + len(assign)
    new = 0
    for key in need:
        if key in assign:
            continue
        if not free:
            sys.exit("ERROR: el bloque '%s' necesita %d bigramas distintos y "
                     "solo hay %d ranuras: de las %d entradas utilizables "
                     "(0..%d) las filas que no se traducen fijan %d indices y "
                     "las demas no valen porque su entrada cae dentro de la "
                     "tabla de color del motor en $%04X (work/"
                     "make_credits_block.py calcula el margen de cada fila "
                     "para que quepan)."
                     % (CREDITS_BLOCK, len(need), nlibres, CREDITS_SLOTS - 1,
                        CREDITS_SLOTS - 1, len(pinned), CREDITS_COLOR_TABLE))
        k = free.pop(0)
        assign[key] = k
        new += 1
        o = crawl_offsets(CREDITS_DICT_CPU) + k * CREDITS_DICT_STRIDE
        base[o:o + 2] = key[1]
        base[o + 2:o + 4] = key[2]
        if shade(k) != key[0]:
            set_shade(k, key[0])

    # ---------- 4) las entradas que ya no usa nadie se vacian ----------
    for k in range(1, CREDITS_SLOTS):
        if k in pinned or k in assign.values():
            continue
        o = crawl_offsets(CREDITS_DICT_CPU) + k * CREDITS_DICT_STRIDE
        base[o:o + 4] = b"\xff" * 4

    # ---------- 5) filas: 16 indices por fila ----------
    for off, m, t0, t1, changed in rows:
        if not changed:
            continue
        for i in range(CREDITS_ROW):
            p0, p1 = t0[2 * i:2 * i + 2], t1[2 * i:2 * i + 2]
            if p0 == "  " and p1 == "  ":
                base[off + i] = 0
                continue
            base[off + i] = assign[(m["class"], encode_pair(p0),
                                    encode_pair(p1))]

    # ---------- 6) verificacion: releer la ROM escrita ----------
    maxidx = 0
    for off, m, t0, t1, changed in rows:
        if not changed:
            continue
        for i in range(CREDITS_ROW):
            p0, p1 = t0[2 * i:2 * i + 2], t1[2 * i:2 * i + 2]
            k = base[off + i]
            want0 = encode_pair(p0) if p0 != "  " else b"\xff\xff"
            want1 = encode_pair(p1) if p1 != "  " else b"\xff\xff"
            got = entry(k)
            if got[0:2] != want0 or got[2:4] != want1:
                sys.exit("ERROR: verificacion '%s' fallo en %s celda %d: la "
                         "entrada %d tiene %s pero se esperaba %s %s"
                         % (CREDITS_BLOCK, addr(off), i, k, got.hex(),
                            want0.hex(), want1.hex()))
            if p0 != "  " or p1 != "  ":
                if shade(k) != m["class"]:
                    sys.exit("ERROR: verificacion del color '%s' fallo en %s "
                             "celda %d: clase %d, se esperaba %d"
                             % (CREDITS_BLOCK, addr(off), i, shade(k),
                                m["class"]))
            maxidx = max(maxidx, k)

    # Solo se han podido tocar los bytes del diccionario y las clases de las
    # ranuras asignadas, el relleno de las que quedan libres y las filas
    # traducidas: todo lo demas (la tabla de color incluida) tiene que estar
    # byte a byte igual que en la ROM base. Esta es la garantia de que las
    # filas que no se traducen y la copia de paridad del stream no cambian.
    if original is not None:
        permitido = set()
        d_off = crawl_offsets(CREDITS_DICT_CPU)
        for k in assign.values():
            permitido.update(range(d_off + k * CREDITS_DICT_STRIDE,
                                   d_off + k * CREDITS_DICT_STRIDE + 4))
            permitido.update(range(d_off + CREDITS_COLOR_REL + k,
                                   d_off + CREDITS_COLOR_REL + k + 1))
        for k in range(1, CREDITS_SLOTS):
            if k not in pinned and k not in assign.values():
                permitido.update(range(d_off + k * CREDITS_DICT_STRIDE,
                                       d_off + k * CREDITS_DICT_STRIDE + 4))
        for off, m, t0, t1, changed in rows:
            if changed:
                permitido.update(range(off, off + CREDITS_ROW))
        fin = d_off + CREDITS_COLOR_REL + 256
        fuera = [i for i in range(d_off, fin)
                 if i not in permitido and base[i] != original[i]]
        if fuera:
            sys.exit("ERROR: el bloque '%s' ha cambiado %d bytes fuera del "
                     "diccionario y de sus filas (el primero en %s)."
                     % (CREDITS_BLOCK, len(fuera), addr(fuera[0])))

    print("insert_all: bloque '%s': %d/%d filas traducidas, %d bigramas "
          "distintos (%d reutilizan una entrada, %d en ranuras nuevas), "
          "indices fijados: %d, indice maximo escrito: %d (limite %d)."
          % (CREDITS_BLOCK, sum(1 for r in rows if r[4]), len(rows), len(need),
             reused, new, len(pinned), maxidx, CREDITS_SLOTS - 1))
    return sum(1 for r in rows if r[4])


def scr_cpu_of(file_off, bank):
    """Direccion CPU (ventana $8000) de un offset de fichero de un banco PRG."""
    return 0x8000 + (file_off - 16 - bank * 0x4000)


def screen_slots(rom):
    """[(indice, banco, puntero_cpu)] de la tabla de pantallas $CA96.

    Se lee de la propia ROM (no del JSON) para que la verificacion cubra TODAS
    las pantallas, incluidas las de graficos que no se extraen como mensajes.
    """
    res = []
    for i in range(SCREEN_SLOTS):
        e = SCREEN_TABLE + i * SCREEN_STRIDE
        bank = rom[e + 1]
        ptr = rom[e + 2] | (rom[e + 3] << 8)
        if bank == 0xFF or 16 + (bank + 1) * 0x4000 > len(rom):
            continue                    # ranura vacia/sin banco real
        res.append((i, bank, ptr))
    return res


# Ventanas del buscador de copias del recompresor (None = todo el prefijo).
# El LZ de este formato copia de la MEMORIA del banco, asi que una pantalla
# puede copiar bytes del STREAM de otra pantalla (el flujo comprimido vive en el
# banco). Al traducir una pantalla se reescribe su stream y se destruye ese
# diccionario de las siguientes: las pantallas 12 y 14 de este juego copian
# cientos de bytes del stream de la 11 y de la 13, y sin el no caben en su sitio.
# Cuanto mas corta es la ventana, mas bytes de la nametable acaban como
# literales dentro del stream (diccionario mas rico para las siguientes) a
# cambio de un stream mas grande para esa pantalla. Se empieza por la ventana
# completa y solo se acorta cuando una pantalla posterior no cabe.
SCREEN_WINDOWS = (None, 2048, 1024, 512, 384, 256, 192, 128, 96, 64, 32, 16, 0)


def plan_screens(base, block, table):
    """Elige la ventana de cada pantalla y devuelve los streams a escribir.

    Recorre las pantallas traducidas en orden de offset (el decodificador lee la
    ROM final, asi que el prefijo de cada una incluye las anteriores ya
    reescritas) y, si una no cabe en su hueco, acorta la ventana de la pantalla
    anterior hasta que todas caben.
    """
    items = []
    for m in sorted(block["messages"].values(), key=lambda m: m["screen"]):
        if m["translated"] == m["original"]:
            continue
        key = "pantalla %d" % m["screen"]
        tbl = LOADED_TABLES[screen_table(m, TBL_INSERT2)]
        off = parse_addr(m["text_offset"])
        bank = m["bank"]
        items.append({
            "screen": m["screen"], "key": key,
            "data": encode_screen(m["translated"], tbl, key),
            "off": off, "bank": bank, "cpu": scr_cpu_of(off, bank),
            "slot": m["stream_length"], "wi": 0, "stream": None,
        })

    # compress() es una funcion pura de (datos, inicio, prefijo, ventana), y el
    # bucle de reintentos recompone la MISMA pantalla muchas veces (una por cada
    # recorte de ventana de las anteriores): memorizar por (pantalla, ventana,
    # prefijo) evita el 85%% del trabajo con resultados identicos.
    cache = {}
    while True:
        work = bytearray(base)
        fail = None
        for it in items:
            prefix = bytes(work[16 + it["bank"] * 0x4000:it["off"]])
            win = SCREEN_WINDOWS[it["wi"]]
            key = (it["screen"], win, prefix)
            stream = cache.get(key)
            if stream is None:
                stream = compress.compress(it["data"], it["cpu"],
                                           prefix=prefix, window=win)
                cache[key] = stream
            it["stream"] = stream
            if len(it["stream"]) > it["slot"]:
                fail = it
                break
            work[it["off"]:it["off"] + len(it["stream"])] = it["stream"]
        if fail is None:
            return items
        # la pantalla que falla necesita el diccionario original: se acorta el
        # buscador de la anterior, que es la que lo reescribe
        prev = [it for it in items if it["off"] < fail["off"]
                and it["wi"] + 1 < len(SCREEN_WINDOWS)]
        if not prev:
            sys.exit("ERROR: la %s necesita %d bytes comprimidos y solo tiene "
                     "%d, incluso dejando que las pantallas anteriores "
                     "conserven todo su diccionario. El texto traducido debe "
                     "ocupar menos celdas que el original (la ROM no tiene "
                     "hueco libre)."
                     % (fail["key"], len(fail["stream"]), fail["slot"]))
        prev[-1]["wi"] += 1


def insert_screens(base, original, block, table):
    """Recomprime las pantallas traducidas y las reescribe en su sitio.

    Cada pantalla es una nametable de 1024 bytes; el motor la lee del flujo
    comprimido, asi que cualquier cambio de texto obliga a recomprimir. El flujo
    nuevo se escribe en el MISMO offset que el original, por lo que no puede
    crecer mas que el original: la ROM no tiene huecos libres y anadir un banco
    PRG no es una opcion (el juego usa el mapeo automatico de los dos ultimos
    bancos de 8 KB del MMC3, que se desplazan al crecer el PRG).

    Antes de escribir se elige la ventana de cada pantalla (ver plan_screens),
    porque las pantallas comparten banco y sus streams son el diccionario de las
    siguientes.

    Despues de escribir se vuelve a descomprimir la ROM resultante para
    comprobar que cada pantalla da exactamente los bytes traducidos.
    """
    items = plan_screens(base, block, table)
    changed = 0
    slack = 0
    for it in items:
        stream = it["stream"]
        base[it["off"]:it["off"] + len(stream)] = stream
        # verificacion: releer la ROM escrita y comparar los 1024 bytes
        img = compress.make_mem(bytes(base[16 + it["bank"] * 0x4000:
                                        16 + (it["bank"] + 1) * 0x4000]))
        got, _ = compress.decompress(img, it["cpu"], SCREEN_SIZE + 64)
        if got != it["data"]:
            sys.exit("ERROR: verificacion de la %s fallida (%d bytes leidos, "
                     "%d esperados)" % (it["key"], len(got), len(it["data"])))
        changed += 1
        slack += it["slot"] - len(stream)
        print("insert_all: %s: %d bytes (hueco %d, %+d), ventana %s"
              % (it["key"], len(stream), it["slot"], it["slot"] - len(stream),
                 SCREEN_WINDOWS[it["wi"]]))
    print("insert_all: bloque '%s': %d pantallas recompuestas en su sitio "
          "(%d bytes de holgura acumulada)" % (SCREEN_BLOCK, changed, slack))
    verify_all_screens(base, original, block, table)
    return changed


def verify_all_screens(base, original, block, table):
    """Comprueba TODAS las pantallas de la tabla $CA96 leyendo la ROM escrita.

    La LZ del formato copia bytes del PROPIO stream comprimido (el diccionario es
    el stream ya emitido), asi que un stream puede leer bytes que pertenecen a
    otra pantalla: reescribir una pantalla puede romper otra. Aqui se relee la
    ROM resultante y se exige que las pantallas traducidas (solo las 0 y 1, las
    unicas con texto) den su nametable traducida y las demas — graficos, que no
    estan en el bloque — den exactamente lo que daba la ROM base.
    """
    by_index = {m["screen"]: m for m in block["messages"].values()}

    def read(rom, bank, cpu):
        img = compress.make_mem(bytes(rom[16 + bank * 0x4000:
                                      16 + (bank + 1) * 0x4000]))
        return compress.decompress(img, cpu, SCREEN_SIZE + 64)[0]

    checked = 0
    translated = 0
    for i, bank, ptr in screen_slots(base):
        key = "pantalla %d" % i
        m = by_index.get(i)
        if m is not None and m["translated"] != m["original"]:
            tbl = LOADED_TABLES[screen_table(m, TBL_INSERT2)]
            want = encode_screen(m["translated"], tbl, key)
            translated += 1
        else:
            want = read(original, bank, ptr)
        got = read(base, bank, ptr)
        if got != want:
            sys.exit("ERROR: la ROM escrita no reproduce la %s al releerla "
                     "(%d bytes leidos, %d esperados). Al reescribir una "
                     "pantalla se ha roto otra que la referenciaba."
                     % (key, len(got), len(want)))
        checked += 1
    print("insert_all: verificadas %d pantallas de la tabla $CA96 en la ROM "
          "escrita (%d traducidas)" % (checked, translated))


def main():
    global LOADED_TABLES
    table = load_insert_tbl(os.path.join(HERE, TBL_INSERT))
    table2 = load_insert_tbl(os.path.join(HERE, TBL_INSERT2))
    table3 = load_insert_tbl(os.path.join(HERE, TBL_INSERT3))
    LOADED_TABLES = {TBL_INSERT: table, TBL_INSERT2: table2, TBL_INSERT3: table3}
    with open(os.path.join(HERE, ROM_NAME), "rb") as fh:
        base = fh.read()
    original = bytes(base)
    base = bytearray(base)

    with open(os.path.join(HERE, IN_JSON), "r", encoding="utf-8") as fh:
        doc = json.load(fh)

    blocks = doc["blocks"]

    # ---------- Preflight: caracteres sin mapeo en las tablas de insercion ----------
    missing = missing_chars(blocks, BLOCK_TBL)
    if any(missing.values()):
        sys.exit("ERROR: hay caracteres traducidos sin mapeo en las tablas de "
                 "insercion (no se inserta nada hasta que los defina el "
                 "usuario):\n" + report_missing(missing))

    # ---------- Bloque de dialogo ----------
    dlg = blocks[DIALOGUE_BLOCK]
    msgs = dlg["messages"]
    originals = sorted(msgs.values(), key=lambda m: parse_addr(m["text_offset"]))

    region_start = min(parse_addr(m["text_offset"]) for m in originals)
    region_end = max(find_block_end(base, parse_addr(m["text_offset"]))
                     for m in originals)
    span = region_end - region_start

    pool = bytearray()
    addr_map = {}
    changed = 0
    for m in originals:
        old = parse_addr(m["text_offset"])
        enc = encode(m["translated"], table)
        addr_map[old] = region_start + len(pool)  # provisional
        pool += enc
        if m["translated"] != m["original"]:
            changed += 1

    if len(pool) <= span:
        new_start = region_start
    else:
        hole = find_free_hole(base, len(pool), (region_start, region_end))
        if hole is None:
            sys.exit("ERROR: el bloque '%s' crece a %d bytes y no hay hueco "
                     "libre de %d en el banco 5 (expansion pendiente)."
                     % (DIALOGUE_BLOCK, len(pool), len(pool)))
        new_start = hole
        # libera la region antigua
        base[region_start:region_end] = b"\x00" * span

    delta = new_start - region_start
    for old in list(addr_map):
        addr_map[old] += delta

    # escribe el pool y rellena
    base[new_start:new_start + len(pool)] = pool
    if len(pool) < span and new_start == region_start:
        base[new_start + len(pool):region_end] = b"\x00" * (span - len(pool))

    # actualiza punteros
    nptr = 0
    for m in originals:
        new_addr = addr_map[parse_addr(m["text_offset"])]
        cpu = new_addr - BANK5_BASE + BANK5_WINDOW
        for poff in m["pointer_offsets"]:
            p = parse_addr(poff)
            base[p] = cpu & 0xFF
            base[p + 1] = (cpu >> 8) & 0xFF
            nptr += 1

    # ---------- Secciones de texto fijo ----------
    fixed_pool = bytearray()
    fixed_msgs = []
    for name in FIXED_POOL:
        if name not in blocks:
            continue
        m = blocks[name]["messages"]["0"]
        fixed_msgs.append((name, m))
        fixed_pool += encode(m["translated"], table)

    if fixed_msgs:
        fp_start = min(parse_addr(m["text_offset"]) for _, m in fixed_msgs)
        fp_end = fp_start
        for _, m in fixed_msgs:
            fp_end = max(fp_end, find_block_end(base, parse_addr(m["text_offset"])))
        fp_span = fp_end - fp_start
        for _, m in fixed_msgs:
            if m["translated"] != m["original"]:
                changed += 1
        if len(fixed_pool) > fp_span:
            sys.exit("ERROR: las secciones de texto fijo crecen a %d bytes "
                     "(limite %d) y no tienen puntero que reubicar."
                     % (len(fixed_pool), fp_span))
        base[fp_start:fp_start + len(fixed_pool)] = fixed_pool
        if len(fixed_pool) < fp_span:
            base[fp_start + len(fixed_pool):fp_end] = b"\x00" * (fp_span - len(fixed_pool))

    # ---------- Pantallas comprimidas (creditos, logo, crawl 1...) ----------
    if SCREEN_BLOCK in blocks:
        changed += insert_screens(base, original, blocks[SCREEN_BLOCK], table2)

    # ---------- Bloque crawl (stream de bigramas del banco 5) ----------
    if CRAWL_BLOCK in blocks:
        changed += insert_crawl(base, blocks[CRAWL_BLOCK], table3)

    # ---------- Creditos del crawl (2 bigramas por celda, banco 5) ----------
    if CREDITS_BLOCK in blocks:
        changed += insert_credits(base, original, blocks[CREDITS_BLOCK], table3)

    # ---------- Escribe la ROM traducida ----------
    out_name = "TR_" + ROM_NAME
    with open(os.path.join(HERE, out_name), "wb") as fh:
        fh.write(base)

    print("insert_all: %d mensajes modificados, %d punteros escritos" % (changed, nptr))
    print("  -> %s" % out_name)
    if bytes(base) == original:
        print("  round-trip: identico a la ROM base")
    else:
        print("  round-trip: ROM modificada")


if __name__ == "__main__":
    main()
