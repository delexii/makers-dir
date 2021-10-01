require "lock"

RSpec.describe Lock do
  it "locks the diary" do
    expect(subject.locked).to be true
  end

  it "unlocks the diary" do
    subject.unlock
    expect(subject.locked).to eq false
  end
end
