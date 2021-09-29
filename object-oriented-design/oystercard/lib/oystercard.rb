class Oystercard
  attr_accessor :balance, :entry_station, :exit_station, :journey, :journeys, :journey_id

  LIMIT = 90
  MIN_AMOUNT = 1

  def initialize
    @balance = 0
    # @entry_station = false
    # @exit_station = false
    # @journey = []
    @journey = {}
    @journeys = {}
    # @journey_id = 1
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
    # @journey << @exit_station
    # @journeys[@journey_id] = @journey
    @journeys[@exit_station] = exit_station
    # journeys[@journey] = journey
    # @journey_id += 1 
  end

  private
  def deduct(num)
    @balance -= num
  end
end
