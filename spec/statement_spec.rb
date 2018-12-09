require 'statement'
require_relative 'test_helper'

describe 'Printing a statement' do
  it 'prints a full statement of transactions for the account' do
    bank = open_account_and_deposit
    bank.deposit(2000, '13/01/2012')
    bank.withdraw(500, '14/01/2012')
    expect(bank.statement).to eq(
      "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00\n"
    )
  end
end
