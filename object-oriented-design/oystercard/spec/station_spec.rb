require "station"

RSpec.describe Station do
  it "stores a name" do
    station = Station.new("Waterloo", 1)
    expect(station.name).to eq "Waterloo"
  end

  it "stores a zone" do
    station = Station.new("Waterloo", 1)
    expect(station.zone).to eq 1
  end
end


