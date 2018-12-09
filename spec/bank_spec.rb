require 'bank'
require_relative 'test_helper'

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

  it 'adds the method, money and date to the trasactions array' do
    bank = open_account_and_deposit
    expect(bank.transaction_check).to eq([{ balance: 1000, credit: 1000, date: '10/01/2012', method: 'deposit' }])
  end

  it 'Cannot deposit less than 1' do
    bank = Bank.new
    expect { bank.deposit(-1, '10/01/2012') }.to raise_error('Deposit Error, please try again')
  end
end

describe 'Withdrawing money' do
  it 'withdraws money from a users account' do
    bank = open_account_and_deposit
    bank.withdraw(500, '14/01/2012')
    expect(bank.account).to eq(500)
  end

  it 'Cannot withdraw more money than you have' do
    bank = Bank.new
    expect { bank.withdraw(1, '13/01/2012') }.to raise_error('Withdraw Error, please try again')
  end
end
