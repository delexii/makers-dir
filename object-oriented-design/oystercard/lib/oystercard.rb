class Oystercard
  attr_accessor :balance, :in_use

  LIMIT = 90
  MIN_AMOUNT = 1

  def initialize
    @balance = 0
    @in_use = false
  end

  def top_up(num)
    raise "Card limit exceeded (£#{LIMIT})" if num + self.balance > LIMIT
    @balance += num
  end

  def in_journey?
    @in_use
  end
  
  def touch_in
    raise "Insufficient funds!" if self.balance < MIN_AMOUNT
    @in_use = true
  end
  
  def touch_out
    @in_use
    deduct(1)
  end

  private
  def deduct(num)
    @balance -= num
  end
end
