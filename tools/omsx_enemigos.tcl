# omsx_enemigos.tcl - Que sprites usa cada enemigo: para cada pantalla de
# KK_LISTA la fuerza (0xC125 + 0xC201 = 1), espera 1,5 s y toma KK_MUESTRAS
# muestras cada 0,1 s de: las 13 fichas (0xD000-0xD67F), los atributos de
# sprite (VRAM 0xF600-0xF67F), sus colores (0xF400-0xF5FF) y 0xDF80-0xDFFF
# (0xDF94: el grafico del jefe que sube p00:5253). Van seguidas en
# KK_OUT/eNN.bin (2560 bytes por muestra). Solo se APUNTA la composicion; los
# puntos se pintan con los patrones de la ROM (tools/figuras.py).
# Vida llena cada 0,1 s y F5 si la partida se acaba (0xC100 != 5).
set OUT $::env(KK_OUT)
file mkdir $OUT
set ::lista $::env(KK_LISTA)
set ::nm [expr {[info exists ::env(KK_MUESTRAS)] ? $::env(KK_MUESTRAS) : 25}]
set throttle off
proc espacio {} { keymatrixdown 8 0x01 ; after time 0.2 { keymatrixup 8 0x01 } }
proc f5 {} { keymatrixdown 7 0x02 ; after time 0.2 { keymatrixup 7 0x02 } }
proc vida {} { debug write memory 0xC129 0x30 ; after time 0.1 vida }
set ::reintentos 0
proc siguiente {} {
    if {[llength $::lista] == 0} { exit }
    if {[debug read memory 0xC100] != 5 && $::reintentos < 25} {
        incr ::reintentos ; f5 ; after time 3 siguiente ; return
    }
    set ::reintentos 0
    set n [lindex $::lista 0]
    set ::lista [lrange $::lista 1 end]
    debug write memory 0xC125 $n
    debug write memory 0xC201 1
    set ::f [open [format "%s/e%02X.bin" $::OUT $n] wb]
    set ::k 0
    after time 1.5 muestra
}
proc muestra {} {
    puts -nonewline $::f [debug read_block memory 0xD000 0x680]
    puts -nonewline $::f [debug read_block VRAM 0xF600 0x80]
    puts -nonewline $::f [debug read_block VRAM 0xF400 0x200]
    puts -nonewline $::f [debug read_block memory 0xDF80 0x80]
    incr ::k
    if {$::k < $::nm} { after time 0.1 muestra } else { close $::f ; siguiente }
}
after time 8 espacio
after time 12 espacio
after time 20 { vida ; siguiente }
