require_relative "tag.rb"

class Note
  attr_reader :text

  def initialize(text)
    @text = text
  end
end
