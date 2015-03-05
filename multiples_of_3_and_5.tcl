#!/usr/bin/tclsh

set sum_of_multiples 0

for {set tested_number 1} {$tested_number < 1000} {incr tested_number} {
    if {[expr $tested_number % 3] == 0} {
        set sum_of_multiples [expr $sum_of_multiples + $tested_number]
    } elseif {[ expr $tested_number % 5] == 0} {
        set sum_of_multiples [expr $sum_of_multiples + $tested_number]
    }
}

puts $sum_of_multiples
