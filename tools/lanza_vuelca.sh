#!/bin/sh
# lanza_vuelca.sh <dir> "<instantes>" ["<espacios>"]: UN openMSX con
# tools/omsx_vuelca.tcl; deja <dir>/fin.txt al acabar.
R=$(cd "$(dirname "$0")/.." && pwd)
D=$R/$1
mkdir -p $D
cd $R && KK_OUT=$D KK_T="$2" KK_ESPACIO="${3:-8 12}" timeout 600 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -cart kingkong2.rom -romtype Konami -script tools/omsx_vuelca.tcl > $D/log.txt 2>&1
echo hecho > $D/fin.txt
