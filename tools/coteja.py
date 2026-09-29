#!/usr/bin/env python3
"""Coteja los dibujos hechos desde la ROM contra volcados de openMSX.

  pantallas <dir>   cada <dir>/pNN.vram (paginas 0 y 1, tools/omsx_pantallas.tcl)
                    contra tools/pantalla.py: los 160x160 puntos del decorado
                    (en la pantalla, a partir de (8, 8)) y los 16 colores.
                    Se dice cuantas celdas de 8x8 difieren y cuales: lo que
                    el juego pinta ENCIMA del decorado (la barca, puertas que
                    se abren...) no esta en el mapa y sale aqui con su sitio.

  titulo <dir>      tools/titulo.py contra los volcados de tools/omsx_vuelca.tcl:
                    <dir>/konami.vram|.pal (a los 5 s: la composicion de
                    Konami en la pagina 1, en toda su caja medida) y
                    <dir>/titulo.vram|.pal (a los 16 s: la pagina 0 entera).
                    Puntos y los 16 colores.

  objetos <dir>...  tools/objetos.py contra cada pNN.vram de los directorios:
                    los 38 dibujos de 16x16 que p00:4AED deja desde 0xB800
                    (4864 bytes), byte a byte. En 40 pantallas (0x3F-0x88,
                    juego de dibujos 8) el juego pisa SIEMPRE la misma caja
                    de la pagina 1, x 40-207 e y 112-135, con otra cosa: esos
                    volcados se cuentan aparte, y cualquier diferencia fuera
                    de la caja es un fallo. Quien la pisa esta por ver.

Codigo de salida 1 si algo tiene diferencias sin explicar.
"""
import glob
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                      # noqa: E402


def px(v, x, y):
    b = v[y * 128 + x // 2]
    return b >> 4 if x % 2 == 0 else b & 15


def paleta_volcada(p):
    return [((p[2 * i] >> 4) & 7, p[2 * i + 1] & 7, p[2 * i] & 7) for i in range(16)]


def coteja_pantalla(ruta):
    v = open(ruta, "rb").read()
    ram = open(ruta[:-5] + ".ram", "rb").read()
    # la que HAY en el volcado, que puede no ser la pedida: el juego salta a
    # otra si Mitchel cae en una salida
    n, cueva = ram[0x125], ram[0x131]
    img, pal = P.pinta(n, cueva)
    celdas = {}
    for y in range(160):
        for x in range(160):
            if img[y][x] != px(v, 8 + x, 8 + y):
                k = (x // 8, y // 8)
                celdas[k] = celdas.get(k, 0) + 1
    pv = paleta_volcada(open(ruta[:-5] + ".pal", "rb").read())
    colores = [i for i in range(16) if pv[i] != pal[i]]
    return n, cueva, ram[0x125], celdas, colores


def coteja_titulo(d):
    import titulo as T
    mal = 0
    for nom, f, pag, zona in (("konami", T.konami, 1, None), ("titulo", T.titulo, 0, (0, 0, 256, 212))):
        v, pal = f()
        if zona is None:
            zona = T.caja(v, 0, 0x40, 256, 0x48, 1)
        x0, y0, w, h = zona
        vv = open(os.path.join(d, nom + ".vram"), "rb").read()
        dif = sum(1 for y in range(y0, y0 + h) for x in range(x0, x0 + w)
                  if v.lee(x, pag * 256 + y) != px(vv, x, pag * 256 + y))
        pv = paleta_volcada(open(os.path.join(d, nom + ".pal"), "rb").read())
        col = [i for i in range(16) if pv[i] != pal[i]]
        print("%s (%dx%d en la pagina %d): %d puntos distintos, colores distintos %s"
              % (nom, w, h, pag, dif, col or "ninguno"))
        mal += bool(dif or col)
    return 1 if mal else 0


def coteja_objetos(dirs):
    import objetos as O
    m = O.vram_iconos()
    mal = n = 0
    pisadas = []
    for d in dirs:
        for ruta in sorted(glob.glob(os.path.join(d, "p??.vram"))):
            v = open(ruta, "rb").read()
            fuera = dentro = 0
            for a, b in m.items():
                if v[a] != b:
                    x, y = (a & 0x7F) * 2, (a - 0x8000) >> 7
                    if 40 <= x < 208 and 112 <= y < 136:
                        dentro += 1
                    else:
                        fuera += 1
            n += 1
            if fuera:
                mal += 1
                print("%s: %d bytes distintos fuera de la caja" % (ruta, fuera))
            elif dentro:
                pisadas.append(os.path.basename(ruta)[1:3])
    print("objetos: %d bytes cotejados en %d volcados: %d a cero, %d con la caja "
          "x 40-207 y 112-135 pisada (%s), %d con diferencias fuera"
          % (len(m), n, n - mal - len(pisadas), len(pisadas),
             " ".join(sorted(set(pisadas))), mal))
    return 1 if mal or not n else 0


def main(argv):
    if len(argv) >= 3 and argv[1] == "objetos":
        return coteja_objetos(argv[2:])
    if len(argv) >= 3 and argv[1] == "titulo":
        return coteja_titulo(argv[2])
    if len(argv) < 3 or argv[1] != "pantallas":
        sys.exit(__doc__)
    mal = 0
    for ruta in sorted(glob.glob(os.path.join(argv[2], "p??.vram"))):
        n, cueva, puesta, celdas, colores = coteja_pantalla(ruta)
        estado = "OK" if not celdas and not colores else "DIFIERE"
        if estado != "OK":
            mal += 1
        print("pantalla 0x%02X (cueva %d, 0xC125=0x%02X): %s  %d celdas%s%s" % (
            n, cueva, puesta, estado, len(celdas),
            (" " + " ".join("%d,%d" % k for k in sorted(celdas)[:12])) if celdas else "",
            ("  colores %s" % colores) if colores else ""))
    return 1 if mal else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
