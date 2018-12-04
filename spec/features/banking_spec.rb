require 'bank'

describe 'Banking app meets user criteria' do
  it 'runs through all the features' do
    bank = Bank.new
    bank.deposit(1000, '10/01/2012')
    bank.deposit(2000, '13/01/2012')
    bank.withdraw(500, '14/01/2012')
    expect(bank.statement).to eq(
      "date || credit || debit || balance
      14/01/2012 || || 500.00 || 2500.00
      13/01/2012 || 2000.00 || || 3000.00
      10/01/2012 || 1000.00 || || 1000.00"
    )
  end
end
