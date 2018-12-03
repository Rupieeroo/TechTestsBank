require 'bank'
require_relative 'test_helper'

describe 'Test working' do
  it 'Test works' do
    bank = Bank.new
    expect(bank.hello).to eq('Hello World')
  end
end

describe 'Depositing money' do
  it 'deposits money into a users account' do
    bank = open_account_and_deposit
    expect(bank.account).to eq(1000)
  end

  it 'deposits more money into a users account' do
    bank = open_account_and_deposit
    bank.deposit(2000, '13/01/2012')
    expect(bank.account).to eq(3000)
  end

  it 'saves the date a transaction was made' do
    bank = open_account_and_deposit
    expect(bank.dates).to eq(['10/01/2012'])
  end
end

describe 'Withdrawing money' do
  it 'withdraws money from a users account' do
    bank = open_account_and_deposit
    bank.withdraw(500, '14/01/2012')
    expect(bank.account).to eq(500)
  end
end

describe 'Printing a statement' do
  it 'saves the number of deposit or withdraw to a history variable' do
    bank = open_account_and_deposit
    bank.deposit(2000, '13/01/2012')
    bank.withdraw(500, '14/01/2012')
    expect(bank.history).to eq([1000, 2000, 500])
  end
end
