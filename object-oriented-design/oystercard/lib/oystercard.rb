class Oystercard
  attr_accessor :balance, :entry_station, :exit_station, :journey, :journeys

  LIMIT = 90
  MIN_AMOUNT = 1

  def initialize
    @balance = 0
    @journey = {}
    @journeys = {}
  end

  def top_up(num)
    raise "Card limit exceeded (£#{LIMIT})" if num + self.balance > LIMIT
    @balance += num
  end

  def in_journey?
    !!@entry_station
  end
  
  def touch_in(entry_station)
    raise "Insufficient funds!" if self.balance < MIN_AMOUNT
    @entry_station = entry_station
    @journeys[@entry_station] = entry_station
  end
  
  def touch_out(exit_station)
    deduct(1)
    @exit_station = exit_station
    @journeys[@exit_station] = exit_station

  end

  private
  def deduct(num)
    @balance -= num
  end
end
