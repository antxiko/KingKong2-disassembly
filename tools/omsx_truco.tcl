# omsx_truco.tcl - El truco del nivel (p01:67F3): con TAB y una F apretadas
# cuando la partida empieza (ESPACIO en la demostracion, p01:6790), LEVEL
# (0xC12E) sale 10-50. KK_FILA/KK_MASCARA: la F que se aprieta (0 0 = solo
# ESPACIO, sin TAB). Deja truco.txt con 0xC100, 0xC11E y 0xC12E y una foto.
#
#   KK_OUT=<dir> KK_FILA=6 KK_MASCARA=0x20 openmsx ... -script este.tcl
set OUT $::env(KK_OUT)
file mkdir $OUT
set fila $::env(KK_FILA)
set masc $::env(KK_MASCARA)
proc espacio {} {
    keymatrixdown 8 0x01
    after time 0.2 { keymatrixup 8 0x01 }
}
proc aprieta {} {
    global fila masc
    if {$masc != 0} {
        keymatrixdown 7 0x08
        keymatrixdown $fila $masc
    }
}
proc mira {} {
    set f [open "$::env(KK_OUT)/truco.txt" a]
    puts $f "fila=$::env(KK_FILA) mascara=$::env(KK_MASCARA) C100=[debug read memory 0xC100] C11E=[format %02X [debug read memory 0xC11E]] LEVEL=[format %02X [debug read memory 0xC12E]]"
    close $f
    screenshot -raw "$::env(KK_OUT)/truco_$::env(KK_FILA)_$::env(KK_MASCARA).png"
    exit 0
}
set throttle off
after time 20 { keymatrixup 7 0x09; keymatrixup 6 0xE0 }
after time 6 aprieta
foreach t {7 9 11 13} { after time $t espacio }
after time 35 mira
