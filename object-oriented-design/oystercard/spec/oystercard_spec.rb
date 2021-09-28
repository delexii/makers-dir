require "oystercard"

RSpec.describe Oystercard do
  let (:card) { Oystercard.new }
  let (:limit) { Oystercard::LIMIT }
  let (:min_amount) { Oystercard::MIN_AMOUNT }

  it "has a default value of 0" do
    expect(card.balance).to eq 0
  end

  it "adds money" do
    expect { card.top_up(10) }.to change { card.balance }.to 10
  end

  it "throws exception when balance > 90" do
    expect { card.top_up(100) }.to raise_error "Card limit exceeded (£90)"
  end

  it "deducts fare" do
    card.top_up(80)
    expect { card.deduct(10) }.to change { card.balance }.to 70
  end

  it "checks whether card is in use" do
    card.in_journey?
    expect(card.in_journey?).to eq false
  end

  it "checks whether journey has started" do
    card.top_up(90)
    card.touch_in
    expect(card.in_journey?).to be true
  end

  it "checks whether journey has ended" do
    card.touch_out
    expect(card).not_to be_in_journey
  end

  it "raise error on touch in when balance is lower than £1" do
    card.top_up(90)
    card.deduct(90)
    expect { card.touch_in }.to raise_error "Insufficient funds!"
  end
end