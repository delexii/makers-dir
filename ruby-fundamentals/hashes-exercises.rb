# Hashes

# - Create a program that
# prompts the user for details about their favourite animal
# stores the details as values, assigned to appropriate keys
# prints the hash once the interrogation has finished

animal = {}

puts "What is your favourite animal"
animal["name"] = gets.chomp
p animal

puts "How big is it?"
height = gets.chomp
animal["height"] = height

puts animal

name = gets.chomp
hash = { "animal" => name}
puts hash["animal"]

# - Create a program that
# prints all the keys in a hash
# prompts the user to select a key
# returns the value associated with that key

hash_new = { "name" => "Bob", "height" => "2 ft", "weight" => "64 kg" }
puts "Select a key from: name, height, weight"
user_key = gets.chomp
puts hash_new[user_key]

# Iterate over a hash and print only the values that begin with 'S'

hash_new2 = { "user1" => "Silvana", "user2" => "Mirabela", "user3" => "Sonny", "user4" => "Marian"}

hash_new2.each do |key, value|
  if value.start_with?("S")
    puts value
  end
end

hash_new2[ "user5"] = "Mary"
puts hash_new2



players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

sorted_by_sport = {}

players.each { |player| sport = player[:sport] name = player[:name] }

if sorted_by_sport[sport] == nil
  sorted_by_sport[sport] = [name]
else
  sorted_by_sport[sport].push(player[:name])
end




