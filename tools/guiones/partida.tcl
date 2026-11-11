# UNA PARTIDA con un piloto sencillo. En el titulo, la barra en el cuadro 150.
# En la pista (0xE19F = 0): la palanca arriba (acelera, 0x85AB), en diagonal para volver al centro de la pista si el
# viento lo saca (X 0x5D-0x63: despegar fuera del centro lo estrella, 0x843F), hasta 0x5C de velocidad (0xE19E);
# entonces la palanca abajo y la barra (despega, 0x8682). En el aire: la barra cada 10 cuadros (los tiros, 0x8934) y la palanca: abajo
# (sube) si la altura (0xE1A5) es menor de 0x14, arriba (baja) si es mayor de 0x1C; y cada 40 cuadros un lado al
# azar, hacia el centro si se aleja (X 0x40-0x80). Nada forzado. 12000 cuadros o GAME OVER + 300.
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
        if {$n % 10 == 0} { toca }
        set h [m 0xE1A5]
        set x [m 0xE101]
        if {$n % 40 == 0} { set ::lado [expr {int(rand() * 3) - 1}] }
        if {$x < 0x40} { set ::lado 1 }
        if {$x > 0x80} { set ::lado -1 }
        set k 0
        if {$h < 0x14} { set k 0x40 } elseif {$h > 0x1C} { set k 0x20 }
        if {$::lado > 0} { set k [expr {$k | 0x80}] } elseif {$::lado < 0} { set k [expr {$k | 0x10}] }
        if {$k} { keymatrixdown 8 $k }
    }
    return [expr {$n >= 12000}]
}
