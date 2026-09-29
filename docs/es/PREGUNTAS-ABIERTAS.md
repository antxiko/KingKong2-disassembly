# Preguntas abiertas

Lo que el desensamblado todavía no explica del todo, o lo que sale del código
y falta verlo jugando.

## Lo que sale del código y falta jugar

Los tres finales, qué arma sirve contra cada enemigo, lo que suelta cada uno,
THE NOT al revés de las teclas, el durián y la figura que sigue a Mitchel, y
que los muertos no vuelvan: todo está leído en el listado, con su dirección,
pero no lo hemos visto en openMSX. Lo único comprobado jugando es el truco
del nivel.

## Quién pisa la caja de los iconos

En 40 pantallas (0x3F-0x88, las del juego de dibujos 8) algo escribe siempre
en la misma caja de la página 1, x 40-207 e y 112-135, encima de los iconos
de los objetos que p00:4AED sube a 0xB800. No sabemos todavía qué rutina es.

## Cuatro pantallas que no casan con su volcado

Las pantallas 0x48, 0x4A, 0x5F y 0x6F difieren en casi todas sus celdas del
volcado de openMSX, en los tres juegos de volcados. Las otras 136 casan, o
difieren solo en lo que se pinta encima del mapa.

## 0xC32A, que nadie escribe

p01:7F9B lee 0xC32A para elegir la conversación del plano alterno de la
pantalla 0x0D, pero ninguna instrucción del cartucho escribe ahí: siempre sale
la misma.

## La figura que sigue a Mitchel

La conversación que cambia al llevarla da a entender quién es, pero no la
hemos dibujado todavía desde sus sprites (p00:507A, 0xC607).

## Los que faltan en las láminas

CLUBMAN (un jefe hecho de sprites, con los gráficos 9-0x17 de p13:7D4B),
CAVERNBIG (solo en el plano alterno de la pantalla 0x58), la pared que se
cierra (SHUT ALL, un trozo de la página 1), lo que tiran los enemigos
(figuras 0x81-0x91) y las figuras de los finales (p15:BA15-BA68) aún no
están dibujados.

## Las conversaciones, sin traducir

Las 56 conversaciones están transcritas del japonés (`tools/dialogos.py`),
pero la traducción está pendiente.
