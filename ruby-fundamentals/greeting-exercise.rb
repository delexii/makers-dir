# SRP = Single Responsibility Principle

# 3 responsibilities
# asks the user what their name is, takes their name and then says "user_name, it's lovely to meet you!"
# tells the user the weather today - the weather should be randomly chosen and there should be 3 options
# Tells a user the time now

def user_name
    puts "Hello! What is your name?"
    return name = gets.chomp
end


def greet_user
    return "#{user_name}, it is lovely to meet you!"
end


def weather
    weather_options = ["stormy", "sunny", "rainy"]
    return "Today is #{weather_options.sample}"
end

def time
    time = Time.now
    return "Time now is #{time}"
end

def greet
    puts greet_user
    puts weather
    puts time
end
  
greet