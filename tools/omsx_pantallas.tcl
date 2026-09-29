# omsx_pantallas.tcl - Cada pantalla de KK_LISTA, forzada y volcada.
#
# Empieza partida (ESPACIO a los 8 y 12 s) y, a los 20 s, va poniendo cada
# numero en 0xC125 (la pantalla) con 0xC201 = 1, que es la marca con la que
# p01:6078 y p01:60F1 piden cargar la pantalla nueva. Antes de cada una se
# llena la vida (0xC129, en BCD) cada 0,1 s: sin eso Mitchel muere a mitad
# de la lista (en la 0x3A se queda sin vida en dos segundos) y los volcados
# son del GAME OVER o del titulo. Si aun asi la partida no esta en juego
# (0xC100 distinto de 5), se pulsa F5 -CONTINUE- y se repite la pantalla.
# (Con savestate/loadstate no vale: tras el loadstate no vuelve a saltar
# ningun `after time` del guion.) A los KK_ESPERA segundos
# vuelca las paginas 0 y 1 de la VRAM (64 KB), la paleta y la RAM
# 0xC000-0xC3FF en KK_OUT/pNN.{vram,pal,ram}.
#
#   KK_OUT=<dir> KK_LISTA="0 1 2" openmsx -machine C-BIOS_MSX2_JP \
#       -cart kingkong2.rom -romtype Konami -script este.tcl
set OUT $::env(KK_OUT)
file mkdir $OUT
set ::lista $::env(KK_LISTA)
set ::espera [expr {[info exists ::env(KK_ESPERA)] ? $::env(KK_ESPERA) : 2.5}]
proc guarda {nom datos} {
    set f [open "$::OUT/$nom" wb]; puts -nonewline $f $datos; close $f
}
proc espacio {} { keymatrixdown 8 0x01 ; after time 0.2 { keymatrixup 8 0x01 } }
proc vida {} { debug write memory 0xC129 0x30 ; after time 0.1 vida }
proc f5 {} { keymatrixdown 7 0x02 ; after time 0.2 { keymatrixup 7 0x02 } }
set ::reintentos 0
proc siguiente {} {
    if {[llength $::lista] == 0} { exit }
    set n [lindex $::lista 0]
    if {[debug read memory 0xC100] != 5 && $::reintentos < 4} {
        incr ::reintentos
        f5
        after time 6 siguiente
        return
    }
    set ::reintentos 0
    set ::lista [lrange $::lista 1 end]
    debug write memory 0xC125 $n
    debug write memory 0xC201 1
    after time $::espera [list vuelca $n]
}
proc vuelca {n} {
    set p [format p%02X $n]
    guarda $p.vram [debug read_block VRAM 0 65536]
    guarda $p.pal [debug read_block "VDP palette" 0 32]
    guarda $p.ram [debug read_block memory 0xC000 0x400]
    siguiente
}
set throttle off
after time 8 espacio
after time 12 espacio
after time 20 { vida ; siguiente }
