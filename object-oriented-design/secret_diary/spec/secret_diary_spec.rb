require "secret_diary"
require "lock"

RSpec.describe SecretDiary do
  let (:my_diary) { SecretDiary.new }
  let (:title) { "September 23" }
  let (:body) { "I am very content today" }

  context "when the diary is unlocked" do
    before(:each) do
      @padlock = double("padlock", :unlock => false)
    end

    describe "#add_entry" do
      it "allows user to write a new entry" do
        my_diary.padlock.unlock
        my_diary.add_entry(title, body)
        expect(my_diary.get_entry(title)).to eq body
      end
    end

    describe "#get_entry" do
      it "allows user to see an entry" do
        my_diary.padlock.unlock
        my_diary.add_entry(title, body)
        expect(my_diary.get_entry(title)).not_to be_empty
      end
    end
  end

  context "when the diary is locked" do
    describe "#add_entry" do
      it "does not allow user to add a new entry" do
        expect { my_diary.add_entry(title, body) }.to raise_error "Diary is locked!"
      end
    end

    describe "#get_entry" do
      it "does not allow user to see an entry" do
        expect { my_diary.get_entry(title) }.to raise_error "Diary is locked!"
      end
    end
  end
end
