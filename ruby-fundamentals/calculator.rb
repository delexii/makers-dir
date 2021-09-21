# Stage 1
# - Add
# - Substract
# - Divide
# - Multiply
# - Define a method called "run" which calls two of the methods above and outputs a number.

# a method returns something and unless explicitly told what to return, it will return the last action


def add(*num)
  return num.inject(:+)
end

# add(1,2,4,6,10,-1,92)


def substract(*num)
  return num.inject(:-)
end

# p substract(100,6)


def divide(*num)
  return num.inject(:/)
end

# p divide(100,6)


def multiply(*num)
  return num.inject(:*)
end

# p multiply(4,5)


def run(*num)
  puts add(*num)
  puts multiply(*num)
end

run(30,67)