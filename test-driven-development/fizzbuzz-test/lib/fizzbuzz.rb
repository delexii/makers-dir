class FizzBuzz
  def play(number)
    if is_divisible_by?(number,15)
      "FizzBuzz"
    elsif is_divisible_by?(number,3)
      "Fizz"
    elsif is_divisible_by?(number,5)
      "Buzz"
    else
      number
    end
  end

  def is_divisible_by?(number, divisor)
    number % divisor == 0
  end
end