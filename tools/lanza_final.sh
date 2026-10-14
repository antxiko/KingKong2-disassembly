#!/bin/sh
# lanza_final.sh: el final 0 (DAYS = 400) en el cartucho y en los dos parches de
# Imanok (work/imanok/kk2_en.rom y kk2_es.rom, de `tools/textos.py imanok`), con
# tools/omsx_final.tcl: foto y volcado cuando el cuarto texto (paso 10) acaba.
# Con KK_ARREGLO=1, los parches con el arreglo (kk2_en_arreglo.rom y
# kk2_es_arreglo.rom, de tools/arreglo_final.py) a work/v_final0_arreglo.
# UN openMSX cada vez.
R=$(cd "$(dirname "$0")/.." && pwd)
if [ "${KK_ARREGLO:-0}" = 1 ]; then
    d=$R/work/v_final0_arreglo; versiones="en es"; cola=_arreglo
else
    d=$R/work/v_final0; versiones="orig en es"; cola=
fi
mkdir -p $d
for v in $versiones; do
    rom=$R/work/imanok/kk2_$v$cola.rom
    [ $v = orig ] && rom=$R/kingkong2.rom
    cd $R && KK_OUT=$d KK_NOMBRE=$v KK_PASO=10 KK_DESPUES=${KK_DESPUES:-0} timeout 300 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -cart $rom -romtype Konami -script tools/omsx_final.tcl > $d/stdout_$v.txt 2>&1
done
echo hecho > $d/fin.txt
