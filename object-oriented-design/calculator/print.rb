require_relative "calculator.rb"

class Print
  def initialize(calculator = Calculator.new)
    @calculator = calculator
  end

  def print_answer
    puts "Do you want to add or subtract?"
    @answer = gets.chomp
    if @answer == "add"
      puts "The Answer is: #{@calculator.add}"
    elsif @answer == "subtract"
      puts "The Answer is: #{@calculator.subtract}"
    end
  end
end

calculator = Calculator.new(100,5)
print = Print.new(calculator)
print.print_answer()
