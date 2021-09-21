# At a high level, unit testing is about testing individual methods or areas (units) of your code to ensure that they do what you expect them to do. 

# Step 1 - determine what we want to test

describe BankAccount do
  it "can deposit money" do
    # Arrange - all the preconditions required for your code to run i.e. creating any objects and assgning any variables
    bank_account = BankAccount.new
    # Act - execute the code which needs to be run in order for the assertion to be true
    bank_account.deposit(10)
    # Assert - you assert that the acton returned the expected value
    expect(bank_account.print_balance).to eq("£10")
  end
end