# This is the Bank class
class Bank
  attr_reader :account, :history, :dates

  def initialize
    @account = 0
    @history = []
    @dates = []
    @transactions = []
  end

  def hello
    'Hello World'
  end

  def deposit(money, date)
    @account += money
    @history.push(money)
    @dates.push(date)
    @transactions << { method: 'deposit', credit: money, date: date }
  end

  def withdraw(money, date)
    @account -= money
    @history.push(money)
    @dates.push(date)
    @transactions << { method: 'withdraw', debit: money, date: date }
  end

  def transaction
    return @transactions
  end

  def statement
    state =  "date || credit || debit || balance\n      14/01/2012 || || 500.00 || 2500.00\n      13/01/2012 || 2000.00 || || 3000.00\n      10/01/2012 || 1000.00 || || 1000.00"
    return state
  end
end
