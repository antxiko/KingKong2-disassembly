#!/usr/bin/env python3
"""EL CONTENIDO de la web de este cartucho: lo unico que es de este juego.

md2html.py y make_web.py son la maquinaria y no llevan dentro el nombre de
ningun juego: lo leen de aqui. Asi no se puede colar el texto de otro
cartucho al copiar la maquinaria.

Todas las cifras de aqui estan medidas sobre este cartucho, con las
herramientas de tools/: CODIGO y DATOS los imprime tools/presupuesto.py
(make sanity) y RUTINAS, INSTRUCCIONES y COMENTARIOS son la suma de los
bancos con codigo en tools/densidad.py (make densidad).
"""

NOMBRE = "King Kong 2: Yomigaeru Densetsu"
CATALOGO = "RC-745"
ANIO = 1986
REPOSITORIO = "https://github.com/antxiko/KingKong2-disassembly"

CODIGO = 37983
DATOS = 93089
RUTINAS = 2414
INSTRUCCIONES = 18093
COMENTARIOS = 7249


def densidad(idioma):
    """El porcentaje comentado, con la coma o el punto de cada idioma."""
    d = "%.1f" % (100.0 * COMENTARIOS / INSTRUCCIONES)
    return d.replace(".", ",") if idioma == "es" else d


PIE_LEGAL = {
    "es": "<em>King Kong 2: Yomigaeru Densetsu</em> (<em>King Kong 2: "
          "La leyenda renace</em>) lo public&oacute; Konami para MSX2 en 1986, "
          "con licencia de Shochiku-Fuji y De Laurentiis Entertainment Group; su "
          "n&uacute;mero de cat&aacute;logo es RC-745 y son 128 KB. Todos los "
          "derechos sobre el juego siguen siendo de sus titulares. Este trabajo "
          "es de preservaci&oacute;n, estudio y documentaci&oacute;n, y la imagen "
          "del cartucho no se distribuye.",
    "en": "<em>King Kong 2: Yomigaeru Densetsu</em> (<em>King Kong 2: The "
          "Legend Revived</em>) was published by Konami for the MSX2 in 1986, "
          "under licence from Shochiku-Fuji and De Laurentiis Entertainment "
          "Group; its catalogue number is RC-745 and it is 128 KB. All rights "
          "in the game remain with their holders. This is preservation, study "
          "and documentation work, and the cartridge image is not distributed.",
}

PORTADA = {
    "es": dict(
        titulo="King Kong 2: Yomigaeru Densetsu - desensamblado comentado",
        claim="Una isla de 140 pantallas, tres finales que dependen de los "
              "d&iacute;as y de las veces que contin&uacute;as, y un hacha que "
              "solo sirve contra un enemigo. Todo dibujado desde la ROM.",
        ficha=["Konami - <b>(c) Konami 1986</b>",
               "Cartucho <b>RC-745</b>, MegaROM de 128 KB (Konami4)",
               "<b>MSX2</b>", "Volcado <b>9c42a0b4...</b>"],
        aviso="<b>Aqu&iacute; no hay ninguna captura.</b> Todas las "
              "im&aacute;genes est&aacute;n <b>dibujadas desde los bytes de la "
              "ROM</b> con las tablas del propio cartucho: el t&iacute;tulo, la "
              "isla y sus zonas con lo que esconde cada pantalla, Mitchel, los "
              "enemigos, los jefes y los objetos. Est&aacute;n <b>cotejadas "
              "contra openMSX</b> en una m&aacute;quina MSX2: los jefes, 0 bytes "
              "distintos en sus siete pantallas. El listado y las cifras se "
              "reproducen con <code>make</code>, y el reensamblado devuelve la "
              "ROM <b>byte a byte</b>.",
    ),
    "en": dict(
        titulo="King Kong 2: Yomigaeru Densetsu - a commented disassembly",
        claim="A 140-screen island, three endings that depend on the days and "
              "on how many times you continue, and an axe that only works "
              "against one enemy. All drawn from the ROM.",
        ficha=["Konami - <b>(c) Konami 1986</b>",
               "An <b>RC-745</b> cartridge, a 128 KB MegaROM (Konami4)",
               "<b>MSX2</b>", "Dump <b>9c42a0b4...</b>"],
        aviso="<b>Not one capture here.</b> Every picture is <b>drawn from "
              "the bytes of the ROM</b> with the cartridge's own tables: the "
              "title, the island and its areas with what every screen hides, "
              "Mitchel, the enemies, the bosses and the items. They are "
              "<b>checked against openMSX</b> on an MSX2 machine: the bosses, 0 "
              "bytes different in their seven screens. The listing and the "
              "numbers are reproducible with <code>make</code>, and reassembling "
              "gives back the ROM <b>byte for byte</b>.",
    ),
}

HALLAZGOS = {
    "es": [
        ("Tres finales, y el mejor no es el que parece",
         "<p>La partida cuenta los d&iacute;as, uno cada 2048 cuadros (unos 34 "
         "segundos), y las veces que se ha continuado tras el GAME OVER "
         "(<code>0xC16E</code>). Al rescatar a LADY KONG, "
         "<code>p06:A837</code> elige: con <b>366 d&iacute;as o m&aacute;s</b>, "
         "tarde (&laquo;AMY no pudo hacer nada: KING KONG acaba de "
         "morir&raquo;); si no, con <b>51 continuaciones o m&aacute;s</b>, AMY "
         "lo opera y revive; con <b>menos</b>, sale adem&aacute;s un "
         "<b>beb&eacute; KONG</b>.</p><p>Los textos son los de la ROM "
         "(<code>p06:AD44</code>-<code>AF40</code>); las condiciones salen del "
         "c&oacute;digo y no las hemos jugado.</p>"),
        ("El truco del nivel",
         "<p>Con <b>TAB y una tecla F</b> apretadas al empezar la partida, se "
         "empieza con m&aacute;s nivel: F1 da LEVEL 10, F2 20, F3 30, F4 40 y "
         "F5 50 (<code>p01:67F3</code>).</p><p>Visto en openMSX: TAB+F1, "
         "LEVEL 10; TAB+F4, 40; sin el truco, 00.</p>"),
        ("Cada enemigo con su arma",
         "<p>No todas las armas valen contra todos (<code>p09:BB14</code>). El "
         "<b>hacha</b>, con 25 de fuerza, solo le hace da&ntilde;o a "
         "<b>GRIZZLY</b>; el <b>arp&oacute;n</b>, solo a B F MAN y D F MAN. "
         "WHITEFIRE y WHITEOGRE solo caen con la <b>espada de luz</b>; CLUBMAN, "
         "con el ROD; BIGSPIDER, con el cuchillo; REDSPIDER, con el garrote o "
         "la garra; TWINMIRES, solo si llevas el amuleto "
         "&#12362;&#12414;&#12418;&#12426;. A THE NASTY, BADPRIEST y BIGFLOWER "
         "no les hace nada el cuerpo a cuerpo.</p><p>Sale del c&oacute;digo; "
         "no lo hemos jugado.</p>"),
        ("El hacha no se vende: la suelta BOWLER",
         "<p>Ninguna tienda la vende. BOWLER la suelta cada 16 muertes si no la "
         "llevas (<code>p03:BBA9</code>), salvo en la pantalla 0x22, donde deja "
         "a alguien que habla. Cada enemigo tiene su bot&iacute;n y su cuenta "
         "(<code>0xDFC0</code>-<code>0xDFDB</code>): BATT deja carne cada 6, "
         "CAVEMAN diez bolas de fuego cada 10&hellip; Y al matar a varios "
         "WATCHMAN en la pantalla 0x6E se abre un pasadizo.</p><p>Sale del "
         "c&oacute;digo; no lo hemos jugado.</p>"),
        ("THE NOT se mueve al rev&eacute;s que t&uacute;",
         "<p>THE NOT mira tus teclas y va justo al contrario "
         "(<code>p02:91B4</code>): t&uacute; subes y &eacute;l baja. As&iacute; "
         "hasta que le das; entonces, al azar. BOWLER, en cambio, va hacia donde "
         "t&uacute; vas (<code>p02:8986</code>), y los gusanos se alejan de "
         "hacia donde mira Mitchel.</p><p>Sale del c&oacute;digo; no lo hemos "
         "jugado.</p>"),
        ("Cinco jefes que no son sprites",
         "<p>BIGFLOWER, TWINMIRES, THE NASTY, BADPRIEST y REVOLVER son dibujos "
         "que <code>p00:4BD0</code> sube a la p&aacute;gina 1 de la VRAM al "
         "entrar en su pantalla, y que el VDP copia con LMMM cada vez que se "
         "mueven o abren la boca.</p><p>Cotejado contra los volcados de "
         "openMSX: 0 bytes distintos en las siete pantallas.</p>"),
        ("Lo que esconde la isla",
         "<p><b>15 pasadizos</b> (casillas <code>0xC0</code>-<code>0xC3</code>, "
         "<code>p06:BE16</code>) llevan a otra pantalla, varios tapados por "
         "rocas que solo quita el conjuro &#12390;&#12416;&#12373;. <b>37 cosas "
         "de decorado</b> se quitan, cada una con su suceso "
         "(<code>p09:B3FD</code>); al quitar la de la pantalla 0x0B aparece la "
         "<b>espada de luz</b> (<code>p15:BD80</code>). Con la <b>llave de "
         "madera</b>, en la pantalla 0x0D se pasa a la 0x70 (<code>p01:7F87</code>).</p><p>Todo "
         "est&aacute; marcado en el mapa, desde las tablas.</p>"),
        ("El duri&aacute;n y la que sigue a Mitchel",
         "<p>Usar el duri&aacute;n en su sitio (<code>p01:7D33</code>) lleva a "
         "la pantalla 0x5F, y desde ah&iacute; una figura sigue a Mitchel "
         "repitiendo sus pasos con 22 de retraso (<code>p02:829A</code>). "
         "Mientras la llevas, la radio cambia de mensaje: &laquo;Buen trabajo, "
         "MITCHEL. Vamos para all&aacute;&raquo;.</p><p>Sale del c&oacute;digo; "
         "no lo hemos jugado.</p>"),
        ("Los muertos no vuelven",
         "<p>Un enemigo muerto no reaparece mientras sigas en las 3 &times; 3 "
         "pantallas de alrededor (<code>p00:590B</code>), y un jefe muerto no "
         "vuelve nunca (<code>0xDE00</code>).</p><p>Sale del c&oacute;digo; no "
         "lo hemos jugado.</p>"),
    ],
    "en": [
        ("Three endings, and the best one is not the obvious one",
         "<p>The game counts the days, one every 2048 frames (about 34 "
         "seconds), and the times you have continued after GAME OVER "
         "(<code>0xC16E</code>). On rescuing LADY KONG, <code>p06:A837</code> "
         "chooses: with <b>366 days or more</b>, too late (&laquo;AMY could do "
         "nothing: KING KONG has just died&raquo;); otherwise, with <b>51 "
         "continues or more</b>, AMY operates and he comes back to life; with "
         "<b>fewer</b>, a <b>baby KONG</b> turns up as well.</p><p>The texts "
         "are the ROM's (<code>p06:AD44</code>-<code>AF40</code>); the "
         "conditions come from the code and have not been played.</p>"),
        ("The level trick",
         "<p>With <b>TAB and an F key</b> held down when the game starts, you "
         "start with a higher level: F1 gives LEVEL 10, F2 20, F3 30, F4 40 and "
         "F5 50 (<code>p01:67F3</code>).</p><p>Seen in openMSX: TAB+F1, LEVEL "
         "10; TAB+F4, 40; without the trick, 00.</p>"),
        ("Every enemy has its weapon",
         "<p>Not every weapon works against everyone (<code>p09:BB14</code>). "
         "The <b>axe</b>, with a strength of 25, only hurts <b>GRIZZLY</b>; the "
         "<b>harpoon</b>, only B F MAN and D F MAN. WHITEFIRE and WHITEOGRE "
         "only fall to the <b>sword of light</b>; CLUBMAN, to the ROD; "
         "BIGSPIDER, to the knife; REDSPIDER, to the club or the claw; "
         "TWINMIRES, only if you carry the &#12362;&#12414;&#12418;&#12426; "
         "charm. THE NASTY, BADPRIEST and BIGFLOWER take nothing from close "
         "combat.</p><p>It comes from the code; we have not played it.</p>"),
        ("The axe is not sold: BOWLER drops it",
         "<p>No shop sells it. BOWLER drops it every 16 kills if you do not "
         "carry it (<code>p03:BBA9</code>), except on screen 0x22, where it "
         "leaves someone who talks. Every enemy has its loot and its count "
         "(<code>0xDFC0</code>-<code>0xDFDB</code>): BATT leaves meat every 6, "
         "CAVEMAN ten fireballs every 10&hellip; And killing a few WATCHMEN on "
         "screen 0x6E opens a passage.</p><p>It comes from the code; we have "
         "not played it.</p>"),
        ("THE NOT moves the opposite way to you",
         "<p>THE NOT reads your keys and goes the other way "
         "(<code>p02:91B4</code>): you go up, it goes down. Until you hit it; "
         "then, at random. BOWLER, instead, goes where you go "
         "(<code>p02:8986</code>), and the worms move away from where Mitchel "
         "is facing.</p><p>It comes from the code; we have not played "
         "it.</p>"),
        ("Five bosses that are not sprites",
         "<p>BIGFLOWER, TWINMIRES, THE NASTY, BADPRIEST and REVOLVER are "
         "drawings that <code>p00:4BD0</code> uploads to page 1 of the VRAM "
         "when entering their screen, and that the VDP copies with LMMM every "
         "time they move or open their mouth.</p><p>Checked against the "
         "openMSX dumps: 0 bytes different in the seven screens.</p>"),
        ("What the island hides",
         "<p><b>15 passages</b> (tiles <code>0xC0</code>-<code>0xC3</code>, "
         "<code>p06:BE16</code>) lead to another screen, several covered by "
         "rocks that only the &#12390;&#12416;&#12373; spell removes. <b>37 "
         "pieces of scenery</b> can be removed, each one by its event "
         "(<code>p09:B3FD</code>); removing the one on screen 0x0B makes the "
         "<b>sword of light</b> appear (<code>p15:BD80</code>). With the "
         "<b>wooden key</b>, screen 0x0D leads through to 0x70 (<code>p01:7F87</code>).</p><p>It "
         "is all marked on the map, from the tables.</p>"),
        ("The durian and the one who follows Mitchel",
         "<p>Using the durian in its place (<code>p01:7D33</code>) takes you "
         "to screen 0x5F, and from there a figure follows Mitchel repeating "
         "his steps 22 behind (<code>p02:829A</code>). While it is with you, "
         "the radio changes its message: &laquo;Good work, MITCHEL. We are on "
         "our way&raquo;.</p><p>It comes from the code; we have not played "
         "it.</p>"),
        ("The dead do not come back",
         "<p>A dead enemy does not reappear while you stay within the 3 "
         "&times; 3 screens around (<code>p00:590B</code>), and a dead boss "
         "never comes back (<code>0xDE00</code>).</p><p>It comes from the "
         "code; we have not played it.</p>"),
    ],
}

# La cabecera: el rotulo del titulo, dibujado desde la ROM (tools/titulo.py)
LOGOTIPO = "rotulo.png"
GALERIA = [
    ("titulo.png",
     "El t&iacute;tulo montado desde las letras de 1 bit de "
     "<code>p06:A2A1</code>-<code>A561</code> y los cr&eacute;ditos de "
     "<code>p06:BAE7</code>. Cotejado contra el volcado de openMSX.",
     "The title built from the 1-bit letters at <code>p06:A2A1</code>-"
     "<code>A561</code> and the credits at <code>p06:BAE7</code>. Checked "
     "against the openMSX dump."),
    ("mapa_marcado.png",
     "Las 140 pantallas, la isla y once zonas, colocadas por sus vecinas "
     "(<code>p09:B1C5</code>); el orden de las salidas est&aacute; "
     "comprobado sacando a Mitchel por los bordes. Encima, en amarillo, los "
     "pasadizos y las salidas especiales con su destino; en rojo, lo que se "
     "quita y su suceso; en verde, los objetos que aparecen solos; en azul, "
     "qui&eacute;n habla en cada pantalla.",
     "The 140 screens, the island and eleven areas, placed by their "
     "neighbours (<code>p09:B1C5</code>); the order of the exits is checked "
     "by walking Mitchel out through the edges. On top, in yellow, the "
     "passages and the special exits with where they lead; in red, what can "
     "be removed and its event; in green, the items that appear on their "
     "own; in blue, who talks on each screen."),
    ("mitchel.png",
     "Mitchel en sus 17 poses, fuera y dentro del agua: un RLE por pose "
     "(<code>p13:7D9B</code>) y dos sprites de 16 &times; 16 superpuestos.",
     "Mitchel in his 17 poses, out of and in the water: one RLE per pose "
     "(<code>p13:7D9B</code>) and two overlaid 16 &times; 16 sprites."),
    ("enemigos.png",
     "Los 55 tipos de enemigo con el nombre que les da el juego "
     "(<code>p15:BA76</code>), dibujados con sus patrones y sus colores.",
     "The 55 enemy types with the name the game gives them "
     "(<code>p15:BA76</code>), drawn with their patterns and colours."),
    ("jefes.png",
     "Los cinco jefes que se pintan con el VDP, con la boca abierta y "
     "cerrada donde la abren (<code>p00:4BD0</code>, figuras de p14).",
     "The five bosses painted by the VDP, with their mouth open and shut "
     "where they open it (<code>p00:4BD0</code>, figures in p14)."),
    ("objetos.png",
     "Los 38 dibujos de <code>p07:630A</code> con su nombre en la fuente "
     "del juego (<code>p15:A069</code>).",
     "The 38 drawings at <code>p07:630A</code> with their names in the "
     "game's font (<code>p15:A069</code>)."),
    ("konami.png",
     "El logotipo de Konami que se destapa al encender.",
     "The Konami logo that is uncovered at power-on."),
]
