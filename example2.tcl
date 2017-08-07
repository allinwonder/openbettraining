#! /bin/env wish

set points 0						;# Initiate the variable
proc printout {value} { 				;# Define a proc to print the value of the variable
	global points; 
	incr points $value; 
	puts "The current value is: $points"
}
 
pack [button .a -text "Press Me to add point!!" -command "printout 1"]     ;# Create button to add point in the variable and invoke "printout"
pack [button .b -text "Press Me to reduce point!!" -command "printout -1"] ;# Create button to cut point in the variable and invoke "printout"
pack [button .c -text "Exit this program!!" -command "exit"]		   ;# Create button to terminate program
