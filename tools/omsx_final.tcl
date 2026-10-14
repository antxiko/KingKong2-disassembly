# omsx_final.tcl - el final 0 por su eleccion: ESPACIO en el titulo y en la
# partida (8 y 12 s); a los 20 s, DAYS = 400 (0xC127-0xC128, BCD: p06:A845
# da el final 0 con 366 o mas) y el estado 8 (p01:6746, el final) en su paso 0.
# Cuando la escena va por el paso KK_PASO y el texto ha acabado (0xCF36 = 1),
# a velocidad normal, foto y volcado, y fuera.
#   KK_OUT=<dir> KK_NOMBRE=<n> KK_PASO=10 openmsx -machine C-BIOS_MSX2_JP \
#       -cart rom -romtype Konami -script este.tcl
set OUT $::env(KK_OUT)
set NOMBRE $::env(KK_NOMBRE)
set PASO $::env(KK_PASO)
file mkdir $OUT
set LOG [open "$OUT/$NOMBRE.log" w]
proc say {m} { global LOG; puts $LOG "t=[format %7.2f [machine_info time]]  $m"; flush $LOG }
proc h {a} { return [format %02X [debug read memory $a]] }
proc guarda {nom datos} { set f [open "$::OUT/$nom" wb]; puts -nonewline $f $datos; close $f }
proc vuelca {n} {
    guarda $n.vram [debug read_block VRAM 0 131072]
    guarda $n.ram [debug read_block memory 0xC000 0x4000]
    guarda $n.pal [debug read_block "VDP palette" 0 32]
    screenshot -raw "$::OUT/$n.png"
    say "$n  C100=[h 0xC100] C101=[h 0xC101] C137=[h 0xC137] C138=[h 0xC138] CF36=[h 0xCF36] CF31=[h 0xCF32][h 0xCF31]"
}
proc espacio {} { keymatrixdown 8 0x01 ; after time 0.2 { keymatrixup 8 0x01 } }
after time 8 espacio
after time 12 espacio
set ::fase 0
proc mira {} {
    if {$::fase == 0} {
        debug write memory 0xC127 0x00
        debug write memory 0xC128 0x04
        debug write memory 0xC101 0
        debug write memory 0xC100 8
        set ::fase 1
        say "al estado 8"
    } elseif {$::fase == 1 && [debug read memory 0xC100] == 8 && [debug read memory 0xC101] == 1} {
        set ::fase 2
        say "elegido el final [h 0xC137]"
    } elseif {$::fase == 2 && [debug read memory 0xC138] == $::PASO} {
        set ::throttle on
        set ::fase 3
        say "paso $::PASO"
    } elseif {$::fase == 3 && [debug read memory 0xCF36] == 1} {
        set ::fase 4
        after time 1.0 "vuelca $::NOMBRE ; despues 1"
    }
    after time 0.05 mira
}
# KK_DESPUES = n: tras el volcado, una foto por segundo n segundos mas (s01...)
proc despues {k} {
    set n [expr {[info exists ::env(KK_DESPUES)] ? $::env(KK_DESPUES) : 0}]
    if {$k > $n} { exit 0 }
    screenshot -raw [format "%s/%s_s%02d.png" $::OUT $::NOMBRE $k]
    say [format "s%02d  C100=%s C101=%s C138=%s CF36=%s CF31=%s%s" $k [h 0xC100] [h 0xC101] [h 0xC138] [h 0xCF36] [h 0xCF32] [h 0xCF31]]
    after time 1.0 "despues [expr {$k + 1}]"
}
set throttle off
after time 20 mira
after time 400 { say "tiempo  C100=[h 0xC100] C101=[h 0xC101] C138=[h 0xC138] fase=$::fase" ; exit 1 }
