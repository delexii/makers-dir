# Dice Game

# random_number = rand(10)

# if random_number < 5
#   return 0
# else
#   return 10
# end

# Write the dice game as above.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. 
# (Still with two dice each.)

person1_dice1 = rand(6)
person1_dice2 = rand(6)
person2_dice1 = rand(6)
person2_dice2 = rand(6)


person1_score = 0
person2_score = 0

while true do
    if person1_dice1 && person1_dice2 > person2_dice1 && person2_dice2
        person1_score += 1
    elsif person1_dice1 && person1_dice2 < person2_dice1 && person2_dice2
        person2_score += 1 

      if person1_score == 2
        puts "person 1 wins" 
        break
      elsif person2_score == 2
        puts "person 2 wins"
        break
      end
    end
end