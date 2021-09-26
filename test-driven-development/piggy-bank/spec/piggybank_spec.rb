require "piggybank"

describe PiggyBank do
  it "responds to add method" do
    # Arrange
    my_piggy = PiggyBank.new
    # Act
    my_piggy.add(10)
    # Assert
    expect(my_piggy.balance).to eq 10
  end

  it "responds to balance method" do
    # Arrange
    my_piggy = PiggyBank.new
    # Act
    my_piggy.balance
    # Assert
    expect(my_piggy.balance).to eq 0
  end

  it "responds to withdraw method" do
    # Arrange
    my_piggy = PiggyBank.new
    # Act
    my_piggy.withdraw(10)
    # Assert
    expect(my_piggy.balance).to eq -10
  end
end