"""Los textos (tools/textos.py) y el parche del final (tools/arreglo_final.py):
lo que dicen LOS-TEXTOS / THE-TEXTS y EL-PARCHE / THE-PATCH, medido sobre lo
que va en el repositorio (los parches de Imanok no van: lo que dependa de
ellos lo mira `textos.py coteja` y `arreglo_final.py coteja`).
"""
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))

import arreglo_final as A        # noqa: E402
import dialogos as D             # noqa: E402
import textos as X               # noqa: E402


class Textos(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.o = X.original()
        cls.g = X.guardados()

    def test_las_56_conversaciones(self):
        self.assertEqual(len(self.o["conversaciones"]), 56)
        self.assertEqual(sum(len(c["lineas"]) for c in self.o["conversaciones"]), 127)
        for i in ("EN", "ES"):
            self.assertEqual(len(self.g[i]["conversaciones"]), 56)

    def test_las_acciones_en_el_mismo_orden(self):
        """Lo que empareja las lineas: las acciones distintas de 0, en el mismo
        orden en el original y en los dos parches."""
        for c in self.o["conversaciones"]:
            orig = [x["accion"] for x in c["lineas"] if x["accion"]]
            for i in ("EN", "ES"):
                self.assertEqual([x["accion"] for x in self.g[i]["conversaciones"][c["n"] - 1] if x["accion"]], orig,
                                 (i, c["n"]))

    def test_objetos_final_y_rotulos(self):
        self.assertEqual(len(self.o["objetos"]), 36)
        self.assertEqual(len(self.o["final"]), 10)
        self.assertEqual(len(self.o["enemigos"]), 68)
        for i in ("EN", "ES"):
            self.assertEqual(len(self.g[i]["objetos"]), 36)
            self.assertEqual(len(self.g[i]["final"]), 10)
            self.assertEqual(set(self.g[i]["rotulos"]), {x["clave"] for x in self.o["rotulos"]})
            self.assertFalse([t for t in self.g[i]["objetos"] if "{" in t], i)

    def test_lo_que_no_lee_nadie_es_un_solo_trozo(self):
        for i, tras in (("EN", "ADE5"), ("ES", "ADF9")):
            self.assertEqual([x["tras"] for x in self.g[i]["final_sin_lector"]], [tras])

    def test_la_pagina_cita_cada_sitio(self):
        for ruta in ("docs/THE-TEXTS.md", "docs/es/LOS-TEXTOS.md"):
            texto = open(os.path.join(RAIZ, ruta), encoding="utf-8").read()
            for c in self.o["conversaciones"]:
                for x in c["lineas"]:
                    self.assertIn("`%s`" % x["sitio"], texto)
            for x in self.o["objetos"] + self.o["final"] + self.o["rotulos"]:
                self.assertIn("`%s`" % x["sitio"], texto)

    def test_la_conversacion_es_de_dialogos(self):
        self.assertEqual(self.o["conversaciones"][0]["lineas"][0]["texto"], D.lineas(1)[0][2])


class Parche(unittest.TestCase):
    def test_los_dos_ips(self):
        """Un byte cada uno: 0xFE en 0xCDFF (EN) y en 0xCE11 (ES)."""
        for idioma, o in (("EN", 0xCDFF), ("ES", 0xCE11)):
            with open(os.path.join(RAIZ, "docs", "parches", "KK2DSK%s_final.ips" % idioma), "rb") as f:
                datos = f.read()
            self.assertEqual(datos, b"PATCH" + o.to_bytes(3, "big") + b"\x00\x01\xfe" + b"EOF")
            self.assertEqual(datos, A.ips([(o, [0xFE])]))

    def test_la_x_vuelve_al_principio(self):
        for idioma, (o, x, texto) in A.ARREGLO.items():
            self.assertEqual((0x20 + len(texto) * 8 + x) & 0xFF, 0x20, idioma)

    def test_la_pagina_y_las_imagenes(self):
        for ruta, img in (("docs/THE-PATCH.md", "imagenes/"), ("docs/es/EL-PARCHE.md", "../imagenes/")):
            texto = open(os.path.join(RAIZ, ruta), encoding="utf-8").read()
            for n in ("parche_final_en_antes", "parche_final_en_despues", "parche_final_es_antes", "parche_final_es_despues"):
                self.assertIn("%s%s.png" % (img, n), texto)
                self.assertTrue(os.path.exists(os.path.join(RAIZ, "docs", "imagenes", n + ".png")), n)
            self.assertIn("KK2DSKEN_final.ips", texto)
            self.assertIn("0xCDFF", texto)
            self.assertIn("0xCE11", texto)


if __name__ == "__main__":
    unittest.main()
