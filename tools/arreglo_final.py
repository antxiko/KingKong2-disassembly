#!/usr/bin/env python3
"""El arreglo del cuarto texto del final para los parches de Imanok, Manuel
Pazos y Ramones (KING KONG 2 ULTIMATE TRANSLATION, KK2DSKEN.ips y
KK2DSKES.ips): un IPS de un byte por idioma, que se aplica DESPUES del suyo.

EL FALLO. El texto del final 0 que carga p06:A943 (el de "no pudimos salvar a
KING KONG") va en tres renglones, pero entre el primero y el segundo hay un
0xFF (acaba el texto) donde iba un 0xFE (renglon siguiente, con la x mas el
byte que sigue; p06:AB13). La rutina que escribe (p06:AADD) se para en el
0xFF, y el resto no sale nunca. El byte que sigue al 0xFF cuadra con un 0xFE:
  EN  p06:ADFF  "WE COULDN'T SAVE KING KONG" (26 letras desde x 0x20), y 0x30:
      0x20 + 26 * 8 + 0x30 = 0x120, la x 0x20 otra vez
  ES  p06:AE11  "NO HEMOS PODIDO SALVAR A" (24 letras), y 0x40:
      0x20 + 24 * 8 + 0x40 = 0x120
EL ARREGLO. 0xFE en ese byte: en la ROM, 0xCDFF (EN) y 0xCE11 (ES). Visto en
openMSX (tools/lanza_final.sh con las ROM arregladas): salen los tres
renglones, como en el cartucho japones.

LAS IMAGENES. El texto como lo pinta p06:AADD: desde (0x20, 0x98), cada letra
8 puntos a la derecha con el color 14 (la fuente del parche, p05:9F99, que
p01:6010 sube en color 14); 0xFE [n] suma n a la x y baja 16; 0x2E es el
dibujo 0x3E de la hoja, vacio. La paleta, la del final (p06:A879).

Uso:  arreglo_final.py          docs/parches/KK2DSKEN_final.ips y KK2DSKES_final.ips
                                (y en work/imanok las ROM arregladas), comprobado
      arreglo_final.py imagen   docs/imagenes/parche_final_{en,es}_{antes,despues}.png
      arreglo_final.py coteja   las imagenes contra work/v_final0 y work/v_final0_arreglo
                                (tools/lanza_final.sh, con KK_ARREGLO=1 las arregladas)
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import pantalla as P  # noqa: E402
import textos as X  # noqa: E402

PARCHES = os.path.join(X.RAIZ, "docs", "parches")
IMAGENES = os.path.join(X.RAIZ, "docs", "imagenes")
TEXTO = {"EN": 0xADE5, "ES": 0xADF9}   # lo que carga p06:A943 en cada parche

ARREGLO = {"EN": (0xCDFF, 0x30, "WE.COULDN=T.SAVE.KING.KONG"),
           "ES": (0xCE11, 0x40, "NO.HEMOS.PODIDO.SALVAR.A")}


def ips(cambios):
    """Un IPS: PATCH, [3 offset][2 largo][datos] por cambio, EOF."""
    out = bytearray(b"PATCH")
    for o, datos in cambios:
        out += o.to_bytes(3, "big") + len(datos).to_bytes(2, "big") + bytes(datos)
    return bytes(out + b"EOF")


def comprueba(idioma, rom):
    """El byte es el 0xFF que corta el texto: delante el primer renglon, detras
    la x del segundo, y 0x20 + letras * 8 + x da 0x120."""
    o, x, texto = ARREGLO[idioma]
    t = texto.encode("ascii")
    if rom[o] != 0xFF or rom[o - len(t):o] != t or rom[o + 1] != x:
        raise SystemExit("%s: en 0x%05X no esta lo esperado (es otra ROM o otro parche)" % (idioma, o))
    if (0x20 + len(t) * 8 + x) & 0xFF != 0x20:
        raise SystemExit("%s: la x no vuelve a 0x20" % idioma)


def pinta(rom, a):
    """La pagina 0 de 256 x 212 con el texto de p06:a como lo pinta p06:AADD."""
    img = [[0] * 256 for _ in range(212)]
    fuente = rom[5 * 0x2000 + 0x1F99:5 * 0x2000 + 0x1F99 + 96 * 8]
    x, y = 0x20, 0x98
    i = 6 * 0x2000 + (a & 0x1FFF)
    while rom[i] != 0xFF:
        c = rom[i]
        if c == 0xFE:
            x = (x + rom[i + 1]) & 0xFF
            y += 16
            i += 2
            continue
        if c >= 0x30:
            for fy in range(8):
                for fx in range(8):
                    if fuente[(c - 0x30) * 8 + fy] & (0x80 >> fx):
                        img[y + fy][x + fx] = 14
        elif c not in (0x2E, 0x00):
            raise ValueError("letra 0x%02X sin dibujo conocido" % c)
        x = (x + 8) & 0xFF
        i += 1
    return img


def paleta_del_final():
    """p06:A879: [color][RB][G] hasta 0xFF."""
    pal = [(0, 0, 0)] * 16
    a = 0xA879
    while P.lee(a, (4, 5, 6)) != 0xFF:
        c, rb, g = (P.lee(a + k, (4, 5, 6)) for k in range(3))
        pal[c] = ((rb >> 4) & 7, g & 7, rb & 7)
        a += 3
    return pal


def versiones():
    """{(idioma, 'antes'|'despues'): rom}: el parche de Imanok, y con el arreglo."""
    out = {}
    for idioma in ("EN", "ES"):
        rom = X.parcheada(idioma)
        out[(idioma, "antes")] = rom
        out[(idioma, "despues")] = X.ips(rom, ips([(ARREGLO[idioma][0], [0xFE])]))
    return out


def imagenes():
    pal = paleta_del_final()
    for (idioma, cuando), rom in versiones().items():
        img = pinta(rom, TEXTO[idioma])[0x90:0xC8]
        ruta = os.path.join(IMAGENES, "parche_final_%s_%s.png" % (idioma.lower(), cuando))
        P.png(ruta, img, pal)
        print(ruta)


def coteja():
    """La pagina 0 entera de cada volcado contra lo pintado."""
    malos = 0
    vol = {"antes": "v_final0", "despues": "v_final0_arreglo"}
    for (idioma, cuando), rom in versiones().items():
        ruta = os.path.join(X.RAIZ, "work", vol[cuando], idioma.lower() + ".vram")
        v = open(ruta, "rb").read()
        img = pinta(rom, TEXTO[idioma])
        dif = sum(1 for y in range(212) for x in range(256)
                  if img[y][x] != ((v[y * 128 + x // 2] >> 4) if x % 2 == 0 else v[y * 128 + x // 2] & 15))
        print("%s %s contra %s: %d puntos distintos de 256 x 212" % (idioma, cuando, os.path.relpath(ruta, X.RAIZ), dif))
        malos += dif != 0
    return malos


def main():
    if sys.argv[1:] == ["imagen"]:
        imagenes()
        return 0
    if sys.argv[1:] == ["coteja"]:
        return 1 if coteja() else 0
    for idioma in ("EN", "ES"):
        rom = X.parcheada(idioma)
        comprueba(idioma, rom)
        o = ARREGLO[idioma][0]
        parche = ips([(o, [0xFE])])
        nombre = "KK2DSK%s_final.ips" % idioma
        os.makedirs(PARCHES, exist_ok=True)
        with open(os.path.join(PARCHES, nombre), "wb") as f:
            f.write(parche)
        arreglada = X.ips(rom, parche)
        with open(os.path.join(X.IMANOK, "kk2_%s_arreglo.rom" % idioma.lower()), "wb") as f:
            f.write(arreglada)
        distintos = [k for k in range(len(rom)) if rom[k] != arreglada[k]]
        print("%s: %s, %d bytes; cambia %s" % (idioma, nombre, len(parche),
                                             ", ".join("0x%05X %02X->%02X" % (k, rom[k], arreglada[k]) for k in distintos)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
