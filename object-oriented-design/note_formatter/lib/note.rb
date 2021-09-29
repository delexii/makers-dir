class Note
  attr_reader :title, :body

  def initialize(title, body, formatter)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

end

# note1 = Note.new("New note", "Today I have learned some interesting concepts about encapsulation", "format")

# new_format = NoteFormatter.new
# puts new_format.format(note1)
