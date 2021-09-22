require "remember-name"

describe "remember names method" do
  it "returns a successful message when given name" do
    expect(remember_name("name")).to eq "Name stored!"
  end
end