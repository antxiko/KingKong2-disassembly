# King Kong 2: Yomigaeru Densetsu — desensamblado comentado

*(Also available [in English](README.md).)*

Desensamblado comentado de ***King Kong 2: Yomigaeru Densetsu***
(キングコング2 甦る伝説), Konami, 1986, cartucho **RC-745** para **MSX2**: un
MegaROM de 128 KB con el mapper Konami sin SCC, dieciséis bancos de 8 KB.

**La web**: https://antxiko.github.io/KingKong2-disassembly/es/

| | |
|---|---|
| explicado | 100 % (37.983 bytes de código, 93.089 de datos) |
| comentado | 40,1 % de las instrucciones |
| rutinas | 2.414, ninguna por debajo del 10 % |
| reensamblado | la ROM, byte a byte |
| imágenes | dibujadas desde la ROM y cotejadas contra openMSX |

## Qué hay

- El listado de los dieciséis bancos (`src/kingkong2_pNN.asm`), que se genera
  desde el binario y las notas y reensambla la ROM exacta.
- La isla entera: las 140 pantallas montadas por sus vecinas, con lo que
  esconde cada una (pasadizos, decorado que se quita, objetos, quién habla),
  desde las tablas del cartucho.
- Mitchel, los 55 enemigos con su nombre, los cinco jefes que pinta el VDP y
  los 38 objetos.
- Lo que hace cada enemigo, qué arma le sirve y qué suelta al morir, comentado
  en el listado.

## Cómo reproducirlo

Hace falta Python 3 (con Pillow), GNU make, [Pasmo](https://pasmo.speccy.org/)
y **tu propia imagen del cartucho** como `kingkong2.rom` en la raíz:

```
sha256  9c42a0b4d4219176e0e894c434deb0b479cde3ce9edbd9e99395a8baae6c01d6
make
```

Los detalles, en [Empezar](docs/es/EMPEZAR.md).

## Aviso

El juego es de Konami; aquí solo están el análisis, los comentarios y las
herramientas. La ROM no se distribuye. Ver [AVISO-LEGAL.md](AVISO-LEGAL.md).
