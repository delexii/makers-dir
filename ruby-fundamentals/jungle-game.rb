# The user starts by facing forward. 
# They can move right, left, or forward. If they move right, they die (there's a goblin). 
# If they move left, they die (there's a werewolf). If they move forward, they live. 
# They have to do this twice to win.

# The user is told they're facing forward and can type 'forward', 'left', or 'right'.
# The user sees a prompt to choose direction: right, left, forward
# If the user chooses right, the program let's them know the game is over
# If the user chooses left, the program let's them know the game is over
# If the user chooses forward, they get another choice of direction.
# If the user chooses right, the program let's them know the game is over
# If the user chooses left, the program let's them know the game is over
# If the user chooses forward twice, the program let's them know they won the game

puts "Welcome to the jungle game! You are facing forward. Please choose from one of the following directions: right, left, forward"
direction = gets.chomp

if direction == "right"
  puts "Game over! The goblin killed you!"
elsif direction == "left"
  puts "Game over! The werewolf killed you!"
elsif direction == "forward"
  puts "Good work! You get another choice" 
  new_direction = gets.chomp
  if new_direction == "forward"
    puts "CONGRATS! You won"
  elsif new_direction == "right"
    puts "Game over! The goblin killed you!"
  elsif new_direction == "left" 
    puts "Game over! The werewolf killed you!"
  else
    puts "Good work! You get another choice" 
  end
end

# game - repeat action - while loop

move_number = 1

while true do
  puts "You're facing forward. You can type forward, left, or right"
  direction = gets.chomp

  if direction == "right"
    puts "Game over! The goblin killed you!"
    break
  elsif direction == "left"
    puts "Game over! The werewolf killed you!"
    break
  elsif direction == "forward"
    if move_number == 2
      puts "CONGRATS! You won"
      break
    end  
    
    move_number += 1
  end  
end