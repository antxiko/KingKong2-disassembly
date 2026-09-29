#!/usr/bin/env python3
"""Lo que se ha MEDIDO del cartucho, clavado para que no se deshaga solo.

Estas comprobaciones necesitan la ROM, y si no esta **fallan**: no se saltan.
Un test que se salta no comprueba nada y en verde daria la impresion
contraria. Quien clone esto sin poner su copia del cartucho vera fallar este
fichero con un mensaje que dice exactamente que falta; los tests que solo
miran el listado publicado siguen pasando.

Cada una corresponde a una afirmacion de la web o de las notas, y todas leen
el binario: ninguna compara una constante contra si misma.
"""
import hashlib
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))

from paginas import ORG, TAM_PAGINA, N_PAGINAS               # noqa: E402

ROM = os.path.join(RAIZ, "kingkong2.rom")
SHA = "9c42a0b4d4219176e0e894c434deb0b479cde3ce9edbd9e99395a8baae6c01d6"

FALTA = ("falta kingkong2.rom en la raiz del repo. Son los 131.072 bytes "
         "de King Kong 2: Yomigaeru Densetsu (Konami, RC-745, 1986, MSX), "
         "y no se distribuyen aqui: pon tu copia. El sha256 tiene que ser %s"
         % SHA)

# Las cinco puertas del reparto de tres en tres: direccion -> primer banco.
PUERTAS = {0x42BC: 1, 0x42C2: 4, 0x42DE: 7, 0x42E4: 10, 0x42EA: 13}
TRIO = 0x42C6


class Cartucho(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        if not os.path.exists(ROM):
            raise AssertionError(FALTA)
        with open(ROM, "rb") as f:
            cls.rom = f.read()

    def p0(self, addr, n):
        """n bytes del banco 0 leidos por su direccion de ejecucion."""
        return self.rom[addr - 0x4000:addr - 0x4000 + n]

    def test_es_la_misma_rom(self):
        self.assertEqual(len(self.rom), 131072)
        self.assertEqual(hashlib.sha256(self.rom).hexdigest(), SHA)

    def test_cabecera_ab(self):
        """0x4000 'AB', INIT 0x4269 y los otros tres vectores a cero."""
        self.assertEqual(self.rom[0:2], b"AB")
        self.assertEqual(self.rom[2] | (self.rom[3] << 8), 0x4269)
        self.assertEqual(self.rom[4:10], b"\x00" * 6)

    def test_mapper_es_konami4(self):
        """Ni una escritura a los registros del mapper CON SCC.

        Los de Konami5 son 0x5000, 0x7000, 0x9000 y 0xB000: se busca el
        `ld (nn),a` -0x32- con cada uno de operando en los 128 KB.
        """
        for reg in (0x5000, 0x7000, 0x9000, 0xB000):
            pat = bytes([0x32, reg & 0xFF, reg >> 8])
            self.assertNotIn(pat, self.rom,
                             "aparece un ld (%#06x),a: seria Konami5" % reg)
        for reg in (0x6000, 0x8000, 0xA000):
            self.assertIn(bytes([0x32, reg & 0xFF, reg >> 8]), self.rom)

    def test_el_trio(self):
        """p00:42C6 escribe A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000.

        `push hl / ld hl,0xF0F1 / ld (0x6000),a / ld (hl),a / inc a / inc hl /
        ld (0x8000),a / ld (hl),a / inc a / ld (0xA000),a / inc hl / ld (hl),a /
        pop hl / pop af / ei / ret`.
        """
        self.assertEqual(self.p0(TRIO, 24), bytes([
            0xE5, 0x21, 0xF1, 0xF0,
            0x32, 0x00, 0x60, 0x77, 0x3C, 0x23,
            0x32, 0x00, 0x80, 0x77, 0x3C,
            0x32, 0x00, 0xA0, 0x23, 0x77,
            0xE1, 0xF1, 0xFB, 0xC9]))

    def test_las_cinco_puertas(self):
        """Cada puerta es `di / push af / ld a,N` y llega a p00:42C6.

        La del 4 cae de largo; las otras cuatro saltan con `jr`.
        """
        for puerta, n in PUERTAS.items():
            b = self.p0(puerta, 6)
            self.assertEqual(b[0:3], bytes([0xF3, 0xF5, 0x3E]))
            self.assertEqual(b[3], n)
            if puerta + 4 == TRIO:
                continue
            self.assertEqual(b[4], 0x18)
            d = b[5] - 256 if b[5] > 127 else b[5]
            self.assertEqual(puerta + 6 + d, TRIO,
                             "la puerta %04X no salta al trio" % puerta)

    def test_regla_banco_org(self):
        """Cada banco se mapea SIEMPRE en la misma ranura.

        Las cinco puertas dan N, N+1 y N+2 en 0x6000, 0x8000 y 0xA000; y las
        escrituras sueltas `ld a,N / ld (reg),a` del cartucho, sin nada en
        medio o con `di` y la copia en RAM, tienen que caer en la ranura que
        dice tools/paginas.py. Entre las dos se tienen que ver los quince
        bancos conmutables.
        """
        vistos = {}
        for n in PUERTAS.values():
            for k, reg in enumerate((0x6000, 0x8000, 0xA000)):
                vistos.setdefault(n + k, set()).add(reg)
        regs = (0x6000, 0x8000, 0xA000)
        for i in range(len(self.rom) - 5):
            if self.rom[i] != 0x3E:                 # ld a,N
                continue
            j, val = i + 2, self.rom[i + 1]
            while j < len(self.rom) - 2:
                w = self.rom[j + 1] | (self.rom[j + 2] << 8)
                if self.rom[j] == 0x32 and w in regs:
                    if val < N_PAGINAS:
                        vistos.setdefault(val, set()).add(w)
                    j += 3
                elif self.rom[j] == 0x32 and 0xF0F1 <= w <= 0xF0F6:
                    j += 3                          # la copia en RAM
                elif self.rom[j] == 0xF3:           # di
                    j += 1
                else:
                    break
        self.assertEqual(sorted(vistos), list(range(1, 16)))
        for banco, rs in sorted(vistos.items()):
            for reg in rs:
                self.assertEqual(ORG[banco], reg,
                                 "el banco %d va a %#06x y paginas.py dice %#06x"
                                 % (banco, reg, ORG[banco]))

    def test_gancho_de_interrupcion(self):
        """INIT engancha 0x4229 en H.TIMI (0xFD9F/0xFDA0) y se queda en `jr $`."""
        pat = bytes([0x3E, 0xC3,                     # ld a,0xC3
                     0x32, 0x9F, 0xFD,               # ld (0xFD9F),a
                     0x21, 0x29, 0x42,               # ld hl,0x4229
                     0x22, 0xA0, 0xFD])              # ld (0xFDA0),hl
        self.assertEqual(self.p0(0x42AA, len(pat)), pat)
        self.assertEqual(self.p0(0x42BA, 2), b"\x18\xfe")   # jr $

    def test_la_interrupcion_pone_4_y_5_sin_tocar_la_copia(self):
        """0x4229 mete los bancos 4 y 5 sin escribir la copia en RAM, llama
        a 0x6228 y devuelve las ranuras leyendo 0xF0F1 y 0xF0F2."""
        esperado = bytes([0xF3,                      # di
                          0x3E, 0x04, 0x32, 0x00, 0x60,
                          0x3C, 0x32, 0x00, 0x80,
                          0xCD, 0x28, 0x62,          # call 0x6228
                          0x3A, 0xF1, 0xF0, 0x32, 0x00, 0x60,
                          0x3A, 0xF2, 0xF0, 0x32, 0x00, 0x80])
        self.assertEqual(self.p0(0x4229, len(esperado)), esperado)

    def test_los_puentes_vuelven_por_4215(self):
        """p00:4050-p00:4212: 76 puentes `call X / jp 0x4215`, uno cada seis
        bytes (el ultimo cae de largo en 0x4215)."""
        for a in range(0x4050, 0x4215, 6):
            b = self.p0(a, 6)
            self.assertEqual(b[0], 0xCD, "%04X" % a)
            if a + 3 < 0x4215:
                self.assertEqual(b[3:6], b"\xc3\x15\x42", "%04X" % a)
        self.assertEqual(len(range(0x4050, 0x4215, 6)), 76)
        # 0x4215: call 0x42BC y, si 0xF0F6 no es cero, ese banco en 0xA000
        self.assertEqual(self.p0(0x4215, 3), b"\xcd\xbc\x42")
        self.assertEqual(self.p0(0x4219, 3), b"\x3a\xf6\xf0")
        self.assertEqual(self.p0(0x4220, 3), b"\x32\x00\xa0")

    def test_no_hay_bancos_de_relleno(self):
        """Ningun banco es 0xFF de punta a punta."""
        for b in range(N_PAGINAS):
            blq = self.rom[b * TAM_PAGINA:(b + 1) * TAM_PAGINA]
            self.assertNotEqual(blq, b"\xff" * TAM_PAGINA)

    def test_despachador_de_konami(self):
        """El despachador esta en 0x425F: la tabla va detras del `call`.

        `pop hl / add a,a / call 0x4255 / ld e,(hl) / inc hl / ld d,(hl) /
        ex de,hl / jp (hl)`, y 0x4255 es `add a,l / ld l,a / ret nc / inc h /
        ret`.
        """
        self.assertEqual(self.p0(0x425F, 10),
                         bytes([0xE1, 0x87, 0xCD, 0x55, 0x42,
                                0x5E, 0x23, 0x56, 0xEB, 0xE9]))
        self.assertEqual(self.p0(0x4255, 5),
                         bytes([0x85, 0x6F, 0xD0, 0x24, 0xC9]))


if __name__ == "__main__":
    unittest.main()
