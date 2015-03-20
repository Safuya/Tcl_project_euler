#!/usr/bin/tclsh

set number 600851475143
set iteration 2

while {[expr ($iteration * $iteration) < $number]} {
	while {[expr ($number%$iteration) == 0]} {
		set number [expr $number / $iteration]
	}
	incr iteration
}

puts "$number"

