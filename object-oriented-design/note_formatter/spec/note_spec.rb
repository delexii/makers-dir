require "note"

RSpec.describe Note do
  let(:title) { "Groceries" }
  let(:body) { "remember to buy milk and eggs" }
  let(:expected_format) { "Title: #{title}\n#{body}" }

  let(:formatter) { double(:formatter_double, format: expected_format) }
  let(:note) { described_class.new(title, body,formatter) }

  describe "#display" do
    it "displays correctly" do
      expect(note.display).to eq(expected_format)
    end
  end
end
