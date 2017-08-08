#STEP 1: What do you think will happen when you execute this program? Let's run it with handson_client.tcl

set flag 0

#Proc for accepting client messages and responding to them
proc accept {chan addr port} {               
	puts "$addr:$port says [gets $chan]"   
	puts $chan Goodbye!                  
	close $chan                          
}                                        

socket -server accept 12346              
puts "Server is up and running. Waiting for connections.." ;


#proc for orchestrating flow of code execution and triggering the Event loop
proc Controller {} {				

	global flag
	puts "Our flag variable is set at = $flag"

#STEP 3: Enable the following line of code and comment out the one following that. What do you think will happen?
#	ChangeVariable
	after 10000 ChangeVariable

	puts "ChangeVariable has been set to execute in 10 seconds"
	puts "We are now waiting for ChangeVariable to be called..."

#STEP 4: Please comment out the following line of code and enable the one following that. What do you think will happen?
	vwait flag
#	exec sleep 10				
	puts "Our flag just changed to: $flag"
	return
}
	#proc for changing value of the flag

proc ChangeVariable {} {
	global flag
#STEP 2: Comment out the following line of code. What do you think will happen?
	set flag 1					
	return
}
						
#initiate program by executing Controller proc
Controller



