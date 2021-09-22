class BankAccount
  def initialize
    @balance = 10
  end

  def deposit(num)
    @balance += num
  end

  def view_balance
    @balance
  end

  def withdraw(num)
    @balance -= num
  end
end