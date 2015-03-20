#!/usr/bin/tclsh

proc is_palindrone n {
	if {$n == [string reverse $n]} {
		return 1
	} else {
		return 0
	}
}

set largest 9009

for {set x 100} {$x < 1000} {incr x} {
	for {set y 100} {$y < 1000} {incr y} {
		set potential [expr $x*$y]
		if {($potential > $largest) && [is_palindrone $potential]} {
			set largest $potential
		}
	}
}

puts $largest

