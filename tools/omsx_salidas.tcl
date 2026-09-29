# omsx_salidas.tcl - Saca a Mitchel por un borde y apunta a que pantalla llega.
#
# KK_PRUEBAS: "pantalla:tecla ..." con tecla = arriba, abajo, izq, der. Para
# cada una: pone la pantalla (0xC125, con 0xC201 = 1), espera, deja a Mitchel
# pegado a ESE borde (0xC303 es la y, 0xC305 la x: p01:60C2 compara 0xC303
# cuando se pulsa ARRIBA) y pulsa la tecla un segundo. Escribe en KK_OUT
# "pantalla tecla -> pantalla nueva (estado)". La vida se rellena cada 0,1 s.
set ::pruebas $::env(KK_PRUEBAS)
set ::out [open $::env(KK_OUT) w]
set throttle off
proc espacio {} { keymatrixdown 8 0x01 ; after time 0.2 { keymatrixup 8 0x01 } }
proc vida {} { debug write memory 0xC129 0x30 ; after time 0.1 vida }
array set MASK {arriba 0x20 abajo 0x40 izq 0x10 der 0x80}
array set POS {arriba {0x10 0x58} abajo {0xA0 0x58} izq {0x58 0x10} der {0x58 0xA0}}
proc f5 {} { keymatrixdown 7 0x02 ; after time 0.2 { keymatrixup 7 0x02 } }
set ::reintentos 0
proc siguiente {} {
    if {[llength $::pruebas] == 0} { close $::out ; exit }
    # si la partida no esta en juego (0xC100 = 7 es el GAME OVER: p01:66DF
    # espera F5 y no sigue hasta que acaba la musica, p00:54BD), F5 cada 3 s,
    # hasta veinticinco veces; el contador vuelve a cero en cada prueba
    if {[debug read memory 0xC100] != 5 && $::reintentos < 25} {
        incr ::reintentos
        f5
        after time 3 siguiente
        return
    }
    lassign [split [lindex $::pruebas 0] :] n t
    set ::pruebas [lrange $::pruebas 1 end]
    set ::reintentos 0
    set ::puntos {0x58 0x20 0x40 0x70 0x90}
    intenta $n $t
}
# Se prueba el borde en varios puntos: si Mitchel cae en pared, el juego lo
# empuja fuera antes de mirar la salida y no pasa nada.
proc intenta {n t} {
    # Mitchel ya junto a ese borde ANTES de cargar la pantalla: p06:BEC5
    # (al entrar, p00:53F9) elige por su posicion el plano de las pantallas
    # partidas, y desde la otra mitad no se llega al borde.
    lassign $::POS($t) y x
    debug write memory 0xC303 $y
    debug write memory 0xC305 $x
    debug write memory 0xC125 $n
    debug write memory 0xC201 1
    after time 3 [list empuja $n $t]
}
proc empuja {n t} {
    lassign $::POS($t) y x
    set q [lindex $::puntos 0]
    set ::puntos [lrange $::puntos 1 end]
    if {$t eq "arriba" || $t eq "abajo"} { set x $q } else { set y $q }
    debug write memory 0xC303 $y
    debug write memory 0xC305 $x
    keymatrixdown 8 $::MASK($t)
    after time 3 [list mira $n $t]
}
proc mira {n t} {
    keymatrixup 8 $::MASK($t)
    after time 2 [list apunta $n $t]
}
proc apunta {n t} {
    if {[debug read memory 0xC125] == $n && [llength $::puntos] > 0 && [debug read memory 0xC100] == 5} {
        intenta $n $t
        return
    }
    puts $::out [format "%02X %s -> %02X  (C100=%02X%02X)" $n $t [debug read memory 0xC125] [debug read memory 0xC100] [debug read memory 0xC101]]
    flush $::out
    siguiente
}
after time 8 espacio
after time 12 espacio
after time 20 { vida ; siguiente }
