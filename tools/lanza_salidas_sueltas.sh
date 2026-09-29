#!/bin/sh
# lanza_salidas_sueltas.sh <fichero> "<pruebas>": cada prueba en su propio
# openMSX (partida nueva), uno detras de otro. Para las pantallas donde
# Mitchel muere y la partida no se recupera.
R=$(cd "$(dirname "$0")/.." && pwd)
: > $R/$1
for p in $2; do
  cd $R && KK_OUT=$R/$1.una KK_PRUEBAS="$p" timeout 300 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -cart kingkong2.rom -romtype Konami -script tools/omsx_salidas.tcl > /dev/null 2>&1
  cat $R/$1.una >> $R/$1
done
echo hecho > $R/$1.fin
