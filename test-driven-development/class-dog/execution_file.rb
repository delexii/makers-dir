require_relative "dog"

# dog 1 is an instance of the Class Dog
# instance - a single object

dog1 = Dog.new("Fido", 2)

# dog 2 is another instance of the Class Dog
dog2 = Dog.new("Baxter", 9)
dog3 = Dog.new("Jax", 4)
dog4 = Dog.new("Dolly", 5)

puts "#{dog1.name} is #{dog1.age} years old."

puts "#{dog2.name} is #{dog2.age} years old."

# Instance variables are tied to a specific dog object

dog1.fetch_ball
dog2.fetch_ball

puts "The total number of dogs is #{Dog.get_total_number_of_dogs}"