require_relative "note.rb"
require_relative "tag.rb"

class Notebook
  attr_reader :notebook, :note, :tagged_notes

  def initialize
    @notebook = []
    @tagged_notes = {}
  end

  def add_note(note)
    @note = note
    @notebook.push(@note)
  end

  def view_notes
    @notebook
  end

  def search_notes(tag)
    puts @tagged_notes[tag]
  end

  def add_tag(tag, note)
    @notebook.each { |n| note == n ? @tagged_notes[tag] = n : "Note not available yet" }
    @tagged_notes
  end
end

notebook = Notebook.new
note1 = Note.new("McD is a great place to eat")
tag1 = Tag.new("Food places")
notebook.add_note(note1)
notebook.add_tag(tag1, note1)

tag2 = Tag.new("Coffee places")
note2 = Note.new("Pret is a good coffee shop")
notebook.add_note(note2)
notebook.add_tag(tag2, note2)

notebook.search_notes(tag1)
