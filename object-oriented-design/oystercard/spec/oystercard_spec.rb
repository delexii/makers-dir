require "oystercard"

RSpec.describe Oystercard do
  # context blocks below
  let (:card) { Oystercard.new }
  let (:limit) { Oystercard::LIMIT }
  let (:min_amount) { Oystercard::MIN_AMOUNT }
  let (:entry_station) { :entry_station }
  let (:exit_station) { :exit_station }
  # let (:journey) { :journey }
  # let (:journeys) { :journeys }
  # let (:journey_id) { :journey_id }
  # let (:journey) { [ :entry_station, :exit_station ] }
  let (:journey){ {entry_station: entry_station, exit_station: exit_station} }


  it "has a default value of 0" do
    expect(card.balance).to eq 0
  end

  it "adds money" do
    expect { card.top_up(10) }.to change { card.balance }.to 10
  end

  it "throws exception when balance > 90" do
    expect { card.top_up(100) }.to raise_error "Card limit exceeded (£90)"
  end

  it "checks whether card is in use" do
    card.in_journey?
    expect(card.in_journey?).to eq false
  end

  it "checks whether journey has started" do
    allow(card).to receive(:in_journey?).and_return(true)
    card.top_up(90)
    expect(card.in_journey?).to eq true
  end

  it "checks whether journey has ended" do
    card.touch_out(exit_station)
    expect(card).not_to be_in_journey
    expect { card.touch_out(exit_station) }.to change { card.balance }.by (-min_amount)
  end

  it "raise error on touch in when balance is lower than £1" do
    card.top_up(90)
    card.send(:deduct, limit)
    expect { card.touch_in(entry_station) }.to raise_error "Insufficient funds!"
  end

  it "stores the entry station" do
    expect(card).to receive(:touch_in).with(entry_station)
    card.top_up(90)
    card.touch_in(entry_station)
  end

  it "stores the journey" do
    card.top_up(90)
    card.touch_in(entry_station)
    card.touch_out(exit_station)
    expect(card.exit_station).to eq exit_station
  end

  it "stores a journey" do
    card.top_up(90)
    card.touch_in(entry_station)
    card.touch_out(exit_station)
    expect(card.journeys).to include journey
  end

  # it "stores the journey" do
  #   card.top_up(90)
  #   card.touch_in(entry_station)
  #   card.touch_out(exit_station)
  #   # expect(card.journeys).to include journey_id
  #   expect(card.journeys).to include journey
  # end

  it "checks list of journeys" do
    expect(card.journeys).to be_empty
  end
end