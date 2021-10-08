require "socket"

server = TCPServer.new(2345)

socket = server.accept

socket.puts "What do you say?"
they_said = socket.gets.chomp

while they_said != "exit"
  socket.puts "What do you say?"
  they_said = socket.gets.chomp
  socket.puts "You said: #{they_said}. Say something else!"
end
socket.close
