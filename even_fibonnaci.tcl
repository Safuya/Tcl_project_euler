#!/usr/bin/tclsh

set sum_of_evens 0
set fibonacci 1
set last_number 0
set new_last_number 0

while {$fibonacci <=4000000} {
	if {$fibonacci % 2 == 0} {
		set sum_of_evens [expr $sum_of_evens + $fibonacci]
	}

	set temp_last_number $fibonacci
	set fibonacci [expr $last_number + $fibonacci]
	set last_number $temp_last_number
}

puts $sum_of_evens

