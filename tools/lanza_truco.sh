#!/bin/sh
# lanza_truco.sh: UN openMSX cada vez (en serie): sin truco, TAB+F1 y TAB+F4.
R=$(cd "$(dirname "$0")/.." && pwd)
O=$R/work/truco
mkdir -p $O
rm -f $O/truco.txt $O/fin.txt
cd $R
for p in "0 0" "6 0x20" "7 0x01"; do
  set -- $p
  KK_OUT="$O" KK_FILA=$1 KK_MASCARA=$2 timeout 120 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -cart kingkong2.rom -romtype Konami -script tools/omsx_truco.tcl >> $O/salida.txt 2>&1
done
echo hecho > $O/fin.txt
