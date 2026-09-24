#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
reflow_translation.py - Reflujo quirúrgico de la traducción para respetar
los límites de pantalla de Shining Force: The Sword of Hajya (Game Gear):

  * Línea <= 18 caracteres visibles (cuadro de diálogo).
  * Como mucho 3 líneas por pantalla; cada 3 líneas hay una pausa
    (<wait more> en diálogos, <delay 03> en cinemáticas).

Solo se modifican las pantallas que incumplen las reglas; el resto se
conserva literalmente. Los mensajes de 1 línea (toasts de combate / prompts
de caja ancha) no se tocan.

Uso:
    python reflow_translation.py --dry          -> solo informe
    python reflow_translation.py --apply        -> escribe el JSON
    python reflow_translation.py --report FILE  -> vuelca el informe a FILE
"""

import re
import sys
import json
import os

ROOT = os.path.dirname(os.path.abspath(__file__))
JSON_IN = os.path.join(ROOT, 'texts_translated.json')

MAX_WIDTH = 18
MAX_LINES = 3

# Anchura estimada de tokens dinámicos (se expanden en runtime; nombres de
# personaje del juego: hasta 7 letras).
DYN_WIDTH = {
    '<name>': 7, '<party leader>': 7, '<use dictionary>': 7,
    '<item>': 10, '<spell>': 9, '<class name>': 9, '<number>': 3,
}
for _i in range(0x18):
    DYN_WIDTH['<dict 0x%02X>' % _i] = 7

TOKEN_RE = re.compile(r'<[^>]+>')
INLINE = {'<delay 01>', '<delay 02>'}   # ancho 0, se pegan al texto adyacente
# Signos que se pegan a la palabra anterior / siguiente (sin espacio).
TRAIL_PUNCT = set(',.;:!?¿¡…')          # se pegan a la IZQUIERDA
LEAD_PUNCT = set('(«')                  # se pegan a la DERECHA


def _is_punct(s):
    return bool(s) and all(c in TRAIL_PUNCT | LEAD_PUNCT for c in s)


def tokenize_words(text):
    """Devuelve unidades (tipo, payload, space):
      ('word', texto, 0)        palabra sin espacios
      ('dyn',  token, 0)        token <...> con ancho propio
      ('ctl',  token, space)    token inline (delay 01/02) ancho 0,
                                1 si iba seguido de espacio (se conserva)
    """
    units = []
    buf = ''
    i = 0
    def flush():
        nonlocal buf
        for w in buf.split():
            if w:
                units.append(('word', w, 0))
        buf = ''
    while i < len(text):
        if text[i] == '<':
            m = TOKEN_RE.match(text, i)
            tok = m.group(0)
            flush()
            if tok in INLINE:
                space = 1 if (i + len(tok) < len(text) and
                              text[i + len(tok)].isspace()) else 0
                units.append(('ctl', tok, space))
            else:
                units.append(('dyn', tok, 0))
            i = m.end()
        else:
            buf += text[i]
            i += 1
    flush()
    return units


def fold_punct(units):
    """Pliega signos de puntuación sueltos a la unidad vecina.
    Devuelve lista de segmentos (tipo, texto, space):
      - 'word': ancho = len(texto)
      - 'dyn' : ancho = DYN_WIDTH
      - 'pdyn': signo + token dinámico, ancho = len(signo) + DYN_WIDTH
      - 'ctl' : ancho = 0, space indica espacio visible tras el token
    """
    segs = []
    for u in units:
        kind, payload, sp = u
        if kind != 'word' or not _is_punct(payload):
            segs.append([kind, payload, sp])
            continue
        # signos sueltos
        if payload[0] in LEAD_PUNCT:
            segs.append(['__lead__', payload])
        else:
            segs.append(['__trail__', payload])

    out = []
    i = 0
    n = len(segs)
    while i < n:
        seg = segs[i]
        t = seg[0]
        if t == '__trail__':
            if out and out[-1][0] not in ('__trail__', '__lead__'):
                out[-1][1] = out[-1][1] + seg[1]
                out[-1][2] = 0
            else:
                out.append(['word', seg[1], 0])
        elif t == '__lead__':
            # pegar al siguiente segmento real (o a palabra previa si no hay)
            j = i + 1
            while j < n and segs[j][0] in ('__trail__', '__lead__'):
                j += 1
            if j < n and segs[j][0] == 'dyn':
                out.append(['pdyn', seg[1], segs[j][1]])
                i = j  # el dyn ya se consume con el signo
            elif j < n:
                segs[j][1] = seg[1] + segs[j][1]
            elif out and out[-1][0] not in ('__trail__', '__lead__'):
                out[-1][1] = out[-1][1] + seg[1]
                out[-1][2] = 0
            else:
                out.append(['word', seg[1], 0])
        else:
            out.append(seg)
        i += 1
    return out


def seg_width(seg):
    if seg[0] == 'word':
        return len(seg[1])
    if seg[0] == 'ctl':
        return seg[2]  # 0 o 1 (espacio visible)
    if seg[0] == 'pdyn':
        return len(seg[1]) + DYN_WIDTH.get(seg[2], 0)
    return DYN_WIDTH.get(seg[1], 0)


def is_glue(seg):
    """Un segmento pegado al texto (sin espacio alrededor): ctl o token de
    ancho 0 (p. ej. <clear screen>, <wait>)."""
    return seg is not None and (seg[0] == 'ctl' or seg_width(seg) == 0)


def seg_punct(seg):
    return seg is not None and len(seg) > 1 and seg[0] != 'ctl' \
        and _is_punct(seg[1])


def render_line(segs):
    """Convierte segmentos en texto: signos pegados, tokens dinámicos con
    espacio alrededor, tokens de ancho 0 pegados al texto."""
    out = ''
    prev = None
    for seg in segs:
        kind, payload, sp = seg
        if kind == 'ctl':
            out += payload + (' ' if sp else '')
            prev = seg
            continue
        t = payload
        if kind == 'pdyn':
            t = payload + seg[2]
        if out and prev is not None and not is_glue(prev) and \
                not seg_punct(seg):
            out += ' '
        out += t
        prev = seg
    return out


def text_to_segs(text):
    return fold_punct(tokenize_words(text))


def line_width(text):
    """Ancho visible de una línea (texto o token) tal como aparece.
    Un ctl tipo <delay XX> va pegado al texto anterior y aporta su propio
    espacio si lo tenía (sin separador adicional)."""
    segs = text_to_segs(text)
    if not segs:
        return 0
    w = 0
    prev = None
    for seg in segs:
        sw = seg_width(seg)
        if prev is not None:
            sep = 1 if not is_glue(prev) and seg[0] != 'ctl' \
                and not seg_punct(seg) else 0
            w += sep
        w += sw
        prev = seg
    return w


def pack_into_lines(segs):
    """Empaqueta segmentos en líneas de <= MAX_WIDTH. Devuelve lista de
    listas de segmentos. Reequilibra para evitar palabras huérfanas de
    1-2 caracteres al final."""
    lines = []
    cur = []
    cur_w = 0
    for seg in segs:
        sw = seg_width(seg)
        if is_glue(seg):
            cur.append(seg)
            cur_w += sw  # ancho visible (0 o espacio del delay)
            continue
        sep = 1 if cur and not is_glue(cur[-1]) else 0
        if cur and cur_w + sep + sw > MAX_WIDTH:
            lines.append(cur)
            cur = [seg]
            cur_w = sw
        else:
            cur.append(seg)
            cur_w += sep + sw
    if cur:
        lines.append(cur)
    if not lines:
        lines.append([])

    # reequilibrar: si la última línea es diminuta, subir la última palabra
    # de la línea anterior para que no quede un huérfano
    def line_render_len(ln):
        return len(render_line(ln))
    changed = True
    while changed and len(lines) > 1:
        changed = False
        last = lines[-1]
        prev = lines[-2]
        # quitar ctl del final de prev (no romper entre ctl y su palabra)
        prev_plain = [s for s in prev if not s[0] == 'ctl']
        last_plain = [s for s in last if not s[0] == 'ctl']
        if not last_plain or not prev_plain:
            break
        last_bare = seg_width(last_plain[-1]) if last_plain[-1][0] == 'word' \
            else 999
        if last_bare == 999 or last_bare > 2:
            break
        # mover la última palabra de prev a last (al inicio)
        w = prev_plain[-1]
        cand_last = [w] + last
        cand_prev = [s for s in prev if s is not w]
        if line_render_len(cand_prev) <= MAX_WIDTH and \
                line_render_len(cand_last) <= MAX_WIDTH:
            lines[-2] = cand_prev
            lines[-1] = cand_last
            changed = True
    return lines


def extra_pause_for(msg):
    if '<wait more>' in msg:
        return '<wait more>'
    if '<delay 03>' in msg:
        return '<delay 03>'
    return '<wait more>'


def split_pauses(body):
    """Divide el cuerpo en (pantallas, pausas).
    pauses[i] es la pausa que va DESPUÉS de pantallas[i]."""
    parts = re.split(r'(<wait more>|<delay 03>)', body)
    screens = []
    pauses = []
    screen = parts[0]
    i = 1
    while i < len(parts):
        screens.append(screen)
        pauses.append(parts[i])
        screen = parts[i + 1]
        i += 2
    screens.append(screen)
    pauses.append('')
    for k in range(1, len(screens)):
        if screens[k].startswith('<line>'):
            screens[k] = screens[k][len('<line>'):]
    return screens, pauses


def reflow_message(msg):
    """Devuelve el mensaje ajustado, o None si no necesita cambios."""
    if '<line>' not in msg:
        return None

    m = re.match(r'^(.*?)((?:<wait>|<delay 0[123]>|<wait more>)*)<end>$',
                 msg, re.S)
    body_main = m.group(1) if m else msg
    close = m.group(2) if m else ''
    if m and not m.group(1):
        close = m.group(0)

    screens, pauses = split_pauses(body_main)
    pause_extra = extra_pause_for(msg)

    out_screens = []
    changed = False
    for body in screens:
        if body == '':
            out_screens.append('')
            continue
        lines = body.split('<line>')
        n = len(lines)
        widths = [line_width(ln) for ln in lines]
        violates = any(w > MAX_WIDTH for w in widths) or n > MAX_LINES
        if not violates:
            out_screens.append(body)
            continue
        changed = True
        # re-empaquetar el texto completo de la pantalla
        units = []
        for ln in lines:
            for u in tokenize_words(ln):
                units.append(u)
        new_lines = pack_into_lines(fold_punct(units))
        if len(new_lines) <= MAX_LINES:
            out_screens.append('<line>'.join(render_line(l) for l in new_lines))
        else:
            groups = [new_lines[k:k + MAX_LINES]
                      for k in range(0, len(new_lines), MAX_LINES)]
            blocks = []
            for gi, g in enumerate(groups):
                if gi:
                    blocks.append(pause_extra)
                blocks.append('<line>'.join(render_line(l) for l in g))
            out_screens.append(''.join(blocks))

    out = ''
    for si, sbody in enumerate(out_screens):
        out += sbody
        out += pauses[si]
    out += close + '<end>'

    return out if changed else None


def scan(jd):
    multi = 0
    over_line = 0
    over_screen = 0
    for bname, bd in jd['blocks'].items():
        for idx in sorted(bd['messages'], key=int):
            t = bd['messages'][idx]['translated']
            if not t or '<line>' not in t:
                continue
            multi += 1
            m = re.match(r'^(.*?)((?:<wait>|<delay 0[123]>|<wait more>)*)<end>$',
                         t, re.S)
            body = m.group(1) if m else t
            screens, _ = split_pauses(body)
            for sb in screens:
                widths = [line_width(ln) for ln in sb.split('<line>')]
                over_line += sum(1 for w in widths if w > MAX_WIDTH)
                if len(widths) > MAX_LINES:
                    over_screen += 1
    return multi, over_line, over_screen


def main():
    dry = '--dry' in sys.argv
    apply_ = '--apply' in sys.argv
    report = None
    if '--report' in sys.argv:
        report = sys.argv[sys.argv.index('--report') + 1]

    with open(JSON_IN, encoding='utf-8') as f:
        jd = json.load(f)

    before = scan(jd)
    changed = 0
    samples = []
    for bname, bd in jd['blocks'].items():
        for idx in sorted(bd['messages'], key=int):
            m = bd['messages'][idx]
            t = m['translated']
            if not t or '<line>' not in t:
                continue
            new = reflow_message(t)
            if new is not None and new != t:
                changed += 1
                samples.append((bname, idx, t, new))
                m['translated'] = new

    after = scan(jd)

    lines = []
    lines.append('Antes -> multilínea: %d | líneas >%d: %d | pantallas >%d: %d'
                 % (before[0], MAX_WIDTH, before[1], MAX_LINES, before[2]))
    lines.append('Cambiados: %d' % changed)
    lines.append('Después -> líneas >%d: %d | pantallas >%d: %d'
                 % (MAX_WIDTH, after[1], MAX_LINES, after[2]))
    lines.append('')
    for bname, idx, before_t, after_t in samples:
        lines.append('--- [%s][%s] ---' % (bname, idx))
        lines.append('  ANTES: %s' % before_t)
        lines.append('  AHORA: %s' % after_t)

    txt = '\n'.join(lines)

    if report:
        with open(report, 'w', encoding='utf-8') as f:
            f.write(txt + '\n')

    if apply_:
        with open(JSON_IN, 'w', encoding='utf-8') as f:
            json.dump(jd, f, ensure_ascii=False, indent=2)
        lines.append('')
        lines.append('Escrito: %s' % JSON_IN)
        print('Escrito %s' % JSON_IN)

    print(txt)


if __name__ == '__main__':
    main()