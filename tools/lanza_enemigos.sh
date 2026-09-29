#!/bin/sh
# lanza_enemigos.sh <dir> "<lista>": UN openMSX con tools/omsx_enemigos.tcl.
R=$(cd "$(dirname "$0")/.." && pwd)
D=$R/$1
mkdir -p $D
cd $R && KK_OUT=$D KK_LISTA="$2" timeout 3000 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -cart kingkong2.rom -romtype Konami -script tools/omsx_enemigos.tcl > $D/log.txt 2>&1
echo hecho > $D/fin.txt
