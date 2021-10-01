class Lock
  attr_reader :locked

  def initialize(locked = true)
    @locked = locked
  end

  def unlock
    @locked = false
  end
end
