#!/usr/bin/env python3
"""Las figuras del juego desde las tablas: Mitchel.

Mitchel son DOS sprites de 16x16 superpuestos (modo 2 del V9938): el primero
en color 1 y el segundo con color 0x42, cuyo bit CC suma su color al de
debajo; donde coinciden sale el 3 (1 | 2). Medido en los volcados: el sprite
16 con patron 0 y color 0x01 en todas las lineas, el 17 con patron 4 y 0x42.

Las poses las sube cada cuadro p00:4FF0 (desde p00:5C49): con los bancos
13-14-15, la palabra 0x7D9B + 2*pose (0x7DBD + 2*pose si 0xC160 no es cero)
apunta a un RLE que se escribe en los patrones de sprite, 0xF800 (p00:5010):
un byte n; si n & 0x7F es 0, acaba; con el bit 7, siguen n & 0x7F bytes tal
cual; sin el, el byte siguiente se repite n veces. Salen 64 bytes: los dos
patrones de 16x16 (32 bytes cada uno: columna izquierda de arriba abajo y
luego la derecha). 17 poses (0xC310) en cada juego.

Uso: figuras.py <dir_salida>     escribe mitchel.png
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                  # noqa: E402

S = (13, 14, 15)
POSES = 17
TABLAS = (0x7D9B, 0x7DBD)             # 0xC160 = 0 y distinto de 0


def rle(a, s=S):
    """p00:5010. Devuelve (bytes, direccion del final)."""
    fuera = []
    while True:
        b = P.lee(a, s)
        n = b & 0x7F
        if n == 0:
            return fuera, a + 1
        if b & 0x80:
            fuera += [P.lee(a + 1 + i, s) for i in range(n)]
            a += 1 + n
        else:
            fuera += [P.lee(a + 1, s)] * n
            a += 2


def patron16(b32):
    """16x16 puntos (0/1) de un patron de sprite de 32 bytes."""
    img = [[0] * 16 for _ in range(16)]
    for y in range(16):
        for x in range(16):
            byte = b32[y + (16 if x >= 8 else 0)]
            img[y][x] = 1 if byte & (0x80 >> (x & 7)) else 0
    return img


def pose(tabla, n):
    datos, _ = rle(P.palabra(tabla + 2 * n, S))
    a, b = patron16(datos[:32]), patron16(datos[32:64])
    return [[a[y][x] | (b[y][x] << 1) for x in range(16)] for y in range(16)]


# ---------------------------------------------------------------- enemigos
TRIO_NIBBLE = {0x10: (4, 5, 6), 0x20: (7, 8, 9), 0x30: (10, 11, 12)}


def rle_con_saltos(a, s):
    """p00:45EF (y p00:4BB4): n con el bit 7 = n bytes tal cual; sin el,
    repetir el siguiente n veces; 0x80 [palabra] sigue leyendo en otra
    direccion; 0 acaba. Devuelve (bytes, [(ini, fin) de cada tramo leido])."""
    fuera, tramos, ini = [], [], a
    while True:
        b = P.lee(a, s)
        a += 1
        if b == 0:
            tramos.append((ini, a))
            return fuera, tramos
        n = b & 0x7F
        if n == b:
            fuera += [P.lee(a, s)] * n
            a += 1
        elif n == 0:
            tramos.append((ini, a + 2))
            a = ini = P.palabra(a, s)
        else:
            fuera += [P.lee(a + i, s) for i in range(n)]
            a += n


def espejo16(p32):
    """p00:4D79: da la vuelta en horizontal a un patron de 16x16."""
    o = bytearray(32)
    for y in range(16):
        w = (p32[y] << 8) | p32[16 + y]
        r = int("{:016b}".format(w)[::-1], 2)
        o[y], o[16 + y] = r >> 8, r & 0xFF
    return o


def volteo16(p32):
    """p00:4DA9: da la vuelta en vertical (cada columna de 16 filas)."""
    return bytes(p32[15 - y] for y in range(16)) + bytes(p32[31 - y] for y in range(16))


def lista_de_sprites(n):
    """p00:4CB3: la lista de p00:5630 + 2*(p09:B0B7 + pantalla)."""
    k = P.lee(0xB0B7 + n, (7, 8, 9))
    return P.palabra(0x5630 + 2 * k, (1, 2, 3))


def patrones_de_pantalla(n):
    """Los patrones de sprite (VRAM 0xF800-0xFFFF, 8 bytes cada uno) que
    deja p00:4CB3 al entrar en la pantalla n: las entradas de 4 bytes de su
    lista, [nibble de bancos | accion][destino][fuente/origen][..]:
      1  RLE de la palabra (ix+2) al patron (ix+1)          (p00:4D03)
      2  copia (ix+3) patrones de 16x16 del (ix+2) al (ix+1),
         en espejo horizontal                               (p00:4D1F)
      3  lo mismo, del reves en vertical                    (p00:4D2A)
      4  las dos cosas                                       (p00:4D35)"""
    pat = bytearray(2048)
    a = lista_de_sprites(n)
    while True:
        e = [P.lee(a + i, (1, 2, 3)) for i in range(4)]
        acc = e[0] & 0x0F
        if acc == 0:
            return pat
        s = TRIO_NIBBLE.get(e[0] & 0xF0, (13, 14, 15))
        if acc == 1:
            d, _ = rle_con_saltos(e[2] | (e[3] << 8), s)
            pat[e[1] * 8:e[1] * 8 + len(d)] = bytes(d)[:2048 - e[1] * 8]
        else:
            for k in range(e[3]):
                q = bytes(pat[(e[2] + 4 * k) * 8:(e[2] + 4 * k) * 8 + 32])
                if acc in (2, 4):
                    q = espejo16(q)
                if acc in (3, 4):
                    q = volteo16(q)
                pat[(e[1] + 4 * k) * 8:(e[1] + 4 * k) * 8 + 32] = q
        a += 4


def grafico_de_jefe(k):
    """p00:5253: con 0xDF94 = k (1..), los 256 bytes de los patrones 224-255:
    p13:66AA + k - 1 dice como (bit 0: RLE de p00:45EF; si no, tal cual) y
    p13:7D4B + 2*(k - 1) de donde."""
    modo = P.lee(0x66AA + k - 1, S)
    a = P.palabra(0x7D4B + 2 * (k - 1), S)
    if modo & 1:
        d, _ = rle_con_saltos(a, S)
        return (bytes(d[:256]) + bytes(256))[:256]
    return bytes(P.lee(a + i, S) for i in range(256))


def _rev8(b):
    return int("{:08b}".format(b)[::-1], 2)


def juegos_de_jefe(n):
    """p00:4B15 (al cargar la pantalla n): si p13:6620 + n no es cero, los 8
    bytes de p13:66D2 + 8*(k-1) son cuatro punteros a RLE (p00:4BB4); cada
    uno da 256 bytes que p00:4B5E recompone en 0xE840 + 0x100*i dando la
    vuelta a los bits de cada byte (p00:4B9D) y reordenando los cuartos
    (p00:4B85): los 8 patrones de 16x16 de un jefe (224-255 en la VRAM,
    comprobado en 0x1A, 0x37 y 0x7C)."""
    k = P.lee(0x6620 + n, S)
    if not k:
        return []
    fuera = []
    for i in range(4):
        src, _ = rle_con_saltos(P.palabra(0x66D2 + 8 * (k - 1) + 2 * i, S), S)
        src = (bytes(src[:256]) + bytes(256))[:256]
        out, hl = [], [0x50]

        def b9d():
            for _ in range(16):
                out.append(_rev8(src[hl[0]]))
                hl[0] += 1

        def b85():
            b9d(); hl[0] -= 0x20; b9d(); hl[0] += 0x20; b9d(); hl[0] -= 0x20; b9d()

        b85(); hl[0] -= 0x60; b85(); hl[0] += 0xA0; b85(); hl[0] -= 0x60; b85()
        fuera.append(bytes(out))
    return fuera


def nombre_de(t):
    """p01:61D2: el nombre del tipo t (p15:BA76 + 2*t), como bytes."""
    s = (1, 2, 15)
    a = P.palabra(0xBA76 + 2 * t, s)
    fuera = []
    while P.lee(a, s) != 0xFF and len(fuera) < 16:
        fuera.append(P.lee(a, s))
        a += 1
    return fuera


def letra(c):
    """La fuente del juego (p05:9F99, desde el '0'; 0x00 es espacio):
    8 filas de 8 puntos."""
    if c < 0x30 or c > 0x8F:
        return [0] * 8
    return [P.lee(0x9F99 + 8 * (c - 0x30) + f, (1, 5, 6)) for f in range(8)]


def cuadro(pat, sprites):
    """Un cuadro de un enemigo: [(dy, dx, patron, color)], como en su ficha.
    Cada sprite es de 16x16; con el bit 6 del color (CC) su color se suma
    (OR) al de los de debajo, como hace el V9938. Devuelve (puntos, dy0, dx0)."""
    y0 = min(s[0] for s in sprites)
    x0 = min(s[1] for s in sprites)
    h = max(s[0] for s in sprites) - y0 + 16
    w = max(s[1] for s in sprites) - x0 + 16
    img = [[0] * w for _ in range(h)]
    for dy, dx, p, c in sprites:
        q = patron16(pat[p * 8:p * 8 + 32])
        for y in range(16):
            for x in range(16):
                if q[y][x]:
                    img[dy - y0 + y][dx - x0 + x] |= c & 0x0F
    return img


def extrae_cuadros(dirs, ruta_json):
    """Junta las grabaciones de tools/omsx_enemigos.tcl: por tipo de enemigo,
    sus cuadros distintos (los sprites de su ficha, relativos a su posicion,
    con patron y color) de mas a menos vistos, la pantalla donde se grabo y,
    si usa los patrones 224-255, el grafico de jefe (0xDF94) de ese cuadro.
    Las muestras miden 2432 bytes, o 2560 si llevan 0xDF80-0xDFFF."""
    import glob
    import json
    from collections import Counter
    cuadros, sala, jefe = {}, {}, {}
    for d in dirs:
        for f in sorted(glob.glob(os.path.join(d, "e??.bin"))):
            n = int(os.path.basename(f)[1:3], 16)
            datos = open(f, "rb").read()
            m = 2560 if len(datos) % 2560 == 0 and len(datos) % 2432 else 2432
            for k in range(len(datos) // m):
                mu = datos[k * m:(k + 1) * m]
                df94 = mu[2432 + 0x14] if m == 2560 else 0
                for q in range(13):
                    ix = mu[q * 0x80:(q + 1) * 0x80]
                    t = ix[0]
                    if not 0 < t <= 68 or not 0 < ix[0x20] <= 8:
                        continue
                    fr = tuple((ix[0x22 + 5 * i] - ix[3], ix[0x23 + 5 * i] - ix[5],
                                ix[0x24 + 5 * i], ix[0x25 + 5 * i]) for i in range(ix[0x20]))
                    cuadros.setdefault(t, Counter())[fr] += 1
                    sala.setdefault(t, n)
                    if any(x[2] >= 224 for x in fr) and df94:
                        jefe.setdefault((t, fr), df94)
    fuera = {}
    for t, c in cuadros.items():
        frs = [fr for fr, _ in c.most_common(12)]
        fuera[str(t)] = {"sala": sala[t], "cuadros": [[list(x) for x in fr] for fr in frs],
                         "jefe": [jefe.get((t, fr), 0) for fr in frs]}
    json.dump(fuera, open(ruta_json, "w"))
    return len(fuera)


def lamina_enemigos(ruta, cuadros_json, escala=2):
    import json
    datos = json.load(open(cuadros_json))
    celdas = []
    for t in sorted(datos, key=int):
        sala = datos[t]["sala"]
        base = patrones_de_pantalla(sala)
        _, pal = P.pinta(sala)
        vistos, frames = set(), []
        candidatos = list(zip(datos[t]["cuadros"], datos[t].get("jefe", [0] * 99)))
        jefe_juegos = juegos_de_jefe(sala)
        if jefe_juegos and candidatos and all(x[2] >= 224 for x in candidatos[0][0]):
            # un jefe: sus cuadros son los cuatro juegos de p00:4B15
            fr0 = candidatos[0][0]
            for g in jefe_juegos:
                pat = bytearray(base)
                pat[224 * 8:] = g
                frames.append(cuadro(pat, [x if x[3] & 0x0F else x for x in fr0]))
            candidatos = []
        for fr, jefe in candidatos:
            if not all(s[2] >= 8 and s[2] % 4 == 0 and s[3] & 0x0F for s in fr):
                continue
            pat = bytearray(base)
            if jefe and any(s[2] >= 224 for s in fr):
                # 0xDF94 puesto: p00:5253 ha subido un grafico de jefe encima
                pat[224 * 8:] = grafico_de_jefe(jefe)
            if not all(any(pat[s[2] * 8:s[2] * 8 + 32]) for s in fr):
                continue                  # algun patron que no hemos subido
            clave = tuple(sorted((s[2], s[3]) for s in fr))
            if clave in vistos:
                continue
            vistos.add(clave)
            frames.append(cuadro(pat, fr))
            if len(frames) == 3:
                break
        if frames:
            celdas.append((int(t), frames, pal))
    # la celda mide lo que la mas ancha (los jefes: cuatro cuadros de 32)
    ancho_celda = max(sum(len(f[0]) + 4 for f in fr) for _, fr, _ in celdas) + 8
    ancho_celda = max(ancho_celda, 13 * 8 + 8)
    cols = 6
    alto_celda = max(max(len(f) for f in fr) for _, fr, _ in celdas) + 18
    filas = (len(celdas) + cols - 1) // cols
    W, H = cols * ancho_celda, filas * alto_celda
    img = [[(72, 72, 88)] * W for _ in range(H)]    # gris: el color 1 es negro
    for k, (t, frames, pal) in enumerate(celdas):
        cx, cy = (k % cols) * ancho_celda + 4, (k // cols) * alto_celda + 2
        rgb = [tuple(v * 255 // 7 for v in c) for c in pal]
        # el nombre arriba y las figuras debajo, dentro de la misma celda
        x, fy = cx, cy + 11
        for fr in frames:
            for y, fila in enumerate(fr):
                for i, c in enumerate(fila):
                    if c and x + i < W:
                        img[fy + y][x + i] = rgb[c]
            x += len(fr[0]) + 4
        ty = cy
        for j, ch in enumerate(nombre_de(t)[:13]):
            for f, bits in enumerate(letra(ch)):
                for i in range(8):
                    if bits & (0x80 >> i):
                        xx = cx + j * 8 + i
                        if xx < W:
                            img[ty + f][xx] = (230, 230, 230)
    import mapa as M
    M.escribe_png(ruta, img, escala)
    return len(celdas)


def main(argv):
    sal = argv[1] if len(argv) > 1 else "."
    os.makedirs(sal, exist_ok=True)
    _, pal = P.pinta(0)                   # los colores 1-3 de la pantalla 0
    esc, sep = 1, 4
    w, h = POSES * (16 + sep) + sep, 2 * (16 + sep) + sep
    img = [[0] * w for _ in range(h)]
    for f, tabla in enumerate(TABLAS):
        for n in range(POSES):
            p = pose(tabla, n)
            for y in range(16):
                for x in range(16):
                    img[sep + f * (16 + sep) + y][sep + n * (16 + sep) + x] = p[y][x]
    P.png(os.path.join(sal, "mitchel.png"), img, pal, escala=3)
    print("mitchel.png: %d poses x 2" % POSES)


if __name__ == "__main__":
    main(sys.argv)
