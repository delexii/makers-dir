class PiggyBank 

  def initialize 
    @my_piggy = 0
  end

  def add(value)
    @my_piggy += value
  end

  def balance
    @my_piggy
  end

  def withdraw(value)
    @my_piggy -= value
  end
end