proc accept {chan addr port} {            ;# Define a proc to accept connections from clients
     puts "$addr:$port says [gets $chan]" ;# Receive a string message from client  
     puts $chan Goodbye!                  ;# Send back a 'goodbye' response to the client
     close $chan                          ;# Close the socket connection with the client (this automatically flushes channel)
 }                                        ;
socket -server accept 12345               ;# Create a server socket to receive connections
puts "Server is up and running. Waiting for connections.." ;
vwait forever                             ;# Trigger the event loop

