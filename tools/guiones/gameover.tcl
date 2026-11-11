# HASTA GAME OVER. En el titulo, la barra en el cuadro 150. En la pista, la palanca a la izquierda: el avion se sale
# por el borde (X por debajo de 0x1E, 0x865C) y se estrella; asi las tres vidas. Acaba 400 cuadros despues de GAME OVER.
proc m {a} { return [debug read memory $a] }
proc toca {} {
    keymatrixdown 8 0x01
    after time 0.05 { keymatrixup 8 0x01 }
}
proc guion {n} {
    if {$n == 150} { toca }
    if {[m 0xE000] == 1} {
        set ::empezada 1
        keymatrixdown 8 0x10
    } elseif {[info exists ::empezada]} {
        keymatrixup 8 0xF0
        if {![info exists ::fin]} { set ::fin $n }
        return [expr {$n >= $::fin + 400}]
    }
    return [expr {$n >= 9000}]
}
