#!/bin/sh
# lanza_salidas.sh <fichero> "<pruebas>": UN openMSX con tools/omsx_salidas.tcl.
R=$(cd "$(dirname "$0")/.." && pwd)
cd $R && KK_OUT=$R/$1 KK_PRUEBAS="$2" timeout 900 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -cart kingkong2.rom -romtype Konami -script tools/omsx_salidas.tcl > /dev/null 2>&1
echo hecho > $R/$1.fin
