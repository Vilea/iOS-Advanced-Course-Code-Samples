#! /usr/bin/env ruby

require 'socket'               

server = TCPServer.open(1999)
loop {                       
  client = server.accept   

  $stdout.puts "Client connected"  

  # Deliver a ping every 5 seconds  
  loop {
  	sleep(5)
  	client.puts("ping")
  }
}