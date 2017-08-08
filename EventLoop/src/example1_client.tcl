 set chan [socket 127.0.0.1 12345]         ;# Open the connection with the server and connect to the socket
 puts $chan Hello!                         ;# Send a hello message to the server
 flush $chan                               ;# Flush the output buffer
 puts "127.0.0.1:12345 says [gets $chan]"  ;# Receive the response message from the server
 close $chan                               ;# Close the socket
