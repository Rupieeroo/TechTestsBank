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
    bank.deposit(2000)
    expect(bank.account).to eq(3000)
  end
end

describe 'Withdrawing money' do
  it 'withdraws money from a users account' do
    bank = open_account_and_deposit
    bank.withdraw(500)
    expect(bank.account).to eq(500)
  end
end
