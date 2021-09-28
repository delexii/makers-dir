class Oystercard
  attr_accessor :balance, :entry_station

  LIMIT = 90
  MIN_AMOUNT = 1

  def initialize
    @balance = 0
    @entry_station = false
  end

  def top_up(num)
    raise "Card limit exceeded (£#{LIMIT})" if num + self.balance > LIMIT
    @balance += num
  end

  def in_journey?
    @entry_station
  end
  
  def touch_in(entry_station)
    raise "Insufficient funds!" if self.balance < MIN_AMOUNT
    @entry_station = true
  end
  
  def touch_out
    @entry_station = nil
    deduct(1)
  end

  private
  def deduct(num)
    @balance -= num
  end
end
