# omsx_mira.tcl - Capturas para MIRAR el juego (no se publican): una cada
# KK_PASO segundos emulados, y ESPACIO pulsado en los instantes de KK_TECLAS.
#
#   KK_OUT=<dir> openmsx -machine C-BIOS_MSX2_JP -cart kingkong2.rom -script este.tcl
set OUT $::env(KK_OUT)
file mkdir $OUT
set ::n 0
proc foto {} {
    incr ::n
    screenshot -raw "$::env(KK_OUT)/f[format %03d $::n].png"
    set f [open "$::env(KK_OUT)/pc.txt" a]
    puts $f "$::n pc=[format %04X [reg pc]] sp=[format %04X [reg sp]] F0F1=[debug read memory 0xF0F1] [debug read memory 0xF0F2] [debug read memory 0xF0F3]"
    close $f
    if {$::n < 40} { after time 1.5 foto } else { exit 0 }
}
proc espacio {} {
    keymatrixdown 8 0x01
    after time 0.2 { keymatrixup 8 0x01 }
}
set throttle on
after time 2 foto
foreach t {8 12 16 20} { after time $t espacio }
