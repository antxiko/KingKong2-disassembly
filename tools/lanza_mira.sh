#!/bin/sh
# lanza_mira.sh: UN openMSX con tools/omsx_mira.tcl, capturas en work/mira3.
R=$(cd "$(dirname "$0")/.." && pwd)
mkdir -p $R/work/mira3
cd $R && KK_OUT="$R/work/mira3" timeout 180 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -cart kingkong2.rom -romtype Konami -script tools/omsx_mira.tcl > work/mira3/salida.txt 2>&1
echo hecho > work/mira3/fin.txt
