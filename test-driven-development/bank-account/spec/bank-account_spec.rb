require "bank-account"

describe BankAccount do
  it "allows users to view balance" do
    bank_account = BankAccount.new
    bank_account.view_balance
    expect(bank_account.view_balance).to eq 10
  end

  it "allows users to deposit money" do
    bank_account = BankAccount.new
    bank_account.deposit(10)
    expect(bank_account.view_balance).to eq 20
  end

  it "allows users to withdraw money" do
    bank_account = BankAccount.new
    bank_account.withdraw(10)
    expect(bank_account.view_balance).to eq 0
  end
end
