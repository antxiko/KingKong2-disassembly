# omsx_salidas.tcl - Saca a Mitchel por un borde y apunta a que pantalla llega.
#
# KK_PRUEBAS: "pantalla:tecla ..." con tecla = arriba, abajo, izq, der. Para
# cada una: pone la pantalla (0xC125, con 0xC201 = 1), espera, deja a Mitchel
# pegado a ESE borde (0xC303 es la y, 0xC305 la x: p01:60C2 compara 0xC303
# cuando se pulsa ARRIBA) y pulsa la tecla un segundo. Escribe en KK_OUT
# "pantalla tecla -> pantalla nueva". La vida se rellena cada 0,1 s.
set ::pruebas $::env(KK_PRUEBAS)
set ::out [open $::env(KK_OUT) w]
set throttle off
proc espacio {} { keymatrixdown 8 0x01 ; after time 0.2 { keymatrixup 8 0x01 } }
proc vida {} { debug write memory 0xC129 0x30 ; after time 0.1 vida }
array set MASK {arriba 0x20 abajo 0x40 izq 0x10 der 0x80}
array set POS {arriba {0x10 0x58} abajo {0xA0 0x58} izq {0x58 0x10} der {0x58 0xA0}}
proc siguiente {} {
    if {[llength $::pruebas] == 0} { close $::out ; exit }
    lassign [split [lindex $::pruebas 0] :] n t
    set ::pruebas [lrange $::pruebas 1 end]
    debug write memory 0xC125 $n
    debug write memory 0xC201 1
    after time 3 [list empuja $n $t]
}
proc empuja {n t} {
    lassign $::POS($t) y x
    debug write memory 0xC303 $y
    debug write memory 0xC305 $x
    keymatrixdown 8 $::MASK($t)
    after time 1 [list mira $n $t]
}
proc mira {n t} {
    keymatrixup 8 $::MASK($t)
    after time 2 [list apunta $n $t]
}
proc apunta {n t} {
    puts $::out [format "%02X %s -> %02X" $n $t [debug read memory 0xC125]]
    flush $::out
    siguiente
}
after time 8 espacio
after time 12 espacio
after time 20 { vida ; siguiente }
