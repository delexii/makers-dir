# Exercise
# - Create a human class
# - Create some instances to experiment with
# - Give your Human some behaviour!
# - Instantiate the Human with some state

Human = Class.new

class Human
  def initialize(age)
    @age = age
  end

  def say_bye
    p "Goodbye!"
  end

  def tell_age
    p "I am #{@age}"
  end
end

human = Human.new(23)
human.say_bye
human.tell_age