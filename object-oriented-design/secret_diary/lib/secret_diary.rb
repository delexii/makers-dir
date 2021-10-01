class SecretDiary
  attr_accessor :diary, :title, :body, :locked

  def initialize
    @diary = {}
    @locked = true
  end

  def add_entry(title, body)
    raise "Diary is locked!" if @locked == true
    @title = title
    @body = body
    @diary[@title] = @body
  end

  def get_entry(title)
    raise "Diary is locked!" if @locked == true
    @diary[@title]
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end
