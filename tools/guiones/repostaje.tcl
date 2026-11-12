# EL REPOSTAJE EN VUELO, FORZADO: el piloto de partida.tcl, pero la partida empieza en la fase 3 (un gancho en
# fase_empieza, 0x821C, pone 0xE00A = 2: el repostaje solo existe desde la fase 3) y, a los 30 cuadros en el aire
# se pone 0xE483 = 1 (el grande derribado, 0x7363): cuando la pantalla se vacia, el
# repostaje (0xE19D = 1, 0x77D7). La X a 0x63-0x65, a media altura; con el cuarto aviso, la palanca abajo (sube)
# hasta la altura de enganche (Y 0x25-0x2F, 0x8B82), y abajo hasta llenar. Lo demas, como partida.tcl.
debug set_bp 0x821C {[debug read memory 0xE000] == 1 && [debug read memory 0xE00A] < 2} { debug write memory 0xE00A 2 }
set ::aire 0
expr {srand(9)}
proc m {a} { return [debug read memory $a] }
proc toca {} {
    keymatrixdown 8 0x01
    after time 0.05 { keymatrixup 8 0x01 }
}
set ::lado 0
proc guion {n} {
    if {[m 0xE000] == 0} {
        if {$n == 150} { toca }
        if {[info exists ::empezada]} {
            if {![info exists ::fin]} { set ::fin $n }
            return [expr {$n >= $::fin + 300}]
        }
        return [expr {$n >= 12000}]
    }
    set ::empezada 1
    keymatrixup 8 0xF0
    set f [m 0xE19F]
    if {$f == 0 && [m 0xE19D] == 2} {
        # aterrizado: frena (la palanca abajo, sin la barra) hasta parar (0x82CE)
        keymatrixdown 8 0x40
        return [expr {$n >= 12000}]
    }
    if {$f == 0} {
        set x [m 0xE101]
        if {$x < 0x5D} {
            keymatrixdown 8 0xA0
        } elseif {$x > 0x63} {
            keymatrixdown 8 0x30
        } elseif {[m 0xE19E] < 0x5C} {
            keymatrixdown 8 0x20
        } else {
            keymatrixdown 8 0x40
            if {$n % 6 == 0} { toca }
        }
        return [expr {$n >= 12000}]
    }
    if {$f >= 2} {
        incr ::aire
        if {$::aire >= 30 && [m 0xE483] == 0 && [m 0xE19D] == 0} { debug write memory 0xE483 1 }
        if {[m 0xE19D] == 1} {
            # el repostaje: centrado bajo la cisterna; con ella abajo, sube hasta engancharse y sigue abajo
            set x [m 0xE101]
            set k 0
            if {$x < 0x63} { set k 0x80 } elseif {$x > 0x65} { set k 0x10 }
            # espera a media altura (Y 0x40) y sube solo con el cuarto aviso (0xE1C7 = 4): antes, por encima de 0x25 se
            # estrellaria (0x8B8C)
            if {[m 0xE1C7] < 4 && [m 0xE100] > 0x40 && $k == 0} { set k 0x40 }
            if {[m 0xE1C7] == 4 && $k == 0} { set k 0x40 }
            if {[m 0xE1C7] == 5} { set k 0x40 }
            if {$k} { keymatrixdown 8 $k }
            return [expr {$n >= 12000}]
        }
        if {$n % 10 == 0} { toca }
        set h [m 0xE1A5]
        set x [m 0xE101]
        if {$n % 40 == 0} { set ::lado [expr {int(rand() * 3) - 1}] }
        if {$x < 0x40} { set ::lado 1 }
        if {$x > 0x80} { set ::lado -1 }
        set k 0
        if {[m 0xE19D] == 2} {
            # el aterrizaje: abajo (la palanca arriba) y al centro de la pista
            # baja, pero sin tocar el suelo mientras la pista se acerca (0xE1AE: a altura 0 se estrella, 0x8D27)
            if {[m 0xE1AE] != 0 && $h <= 3} { set k 0x40 } else { set k 0x20 }
            if {$x < 0x5D} { set ::lado 1 } elseif {$x > 0x63} { set ::lado -1 } else { set ::lado 0 }
        } elseif {$h < 0x14} { set k 0x40 } elseif {$h > 0x1C} { set k 0x20 }
        if {$::lado > 0} { set k [expr {$k | 0x80}] } elseif {$::lado < 0} { set k [expr {$k | 0x10}] }
        if {$k} { keymatrixdown 8 $k }
    }
    return [expr {$n >= 12000}]
}
