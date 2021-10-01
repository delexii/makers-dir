require_relative "lock"

class SecretDiary
  attr_accessor :diary, :title, :body, :padlock

  def initialize(padlock = Lock.new)
    @diary = {}
    @padlock = padlock
  end

  def add_entry(title, body)
    raise "Diary is locked!" if @padlock.locked
    @title = title
    @body = body
    @diary[@title] = @body
  end

  def get_entry(title)
    raise "Diary is locked!" if @padlock.locked
    @diary[@title]
  end
end
