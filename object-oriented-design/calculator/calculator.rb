class Calculator
  def initialize(*num)
    @num = num
  end

  def add
    @num.inject(:+)
  end

  def subtract
    @num.inject(:-)
  end
end
