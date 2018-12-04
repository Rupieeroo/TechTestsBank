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
    @transactions << { method: 'deposit', amount: money, date: date }
  end

  def withdraw(money, date)
    @account -= money
    @history.push(money)
    @dates.push(date)
    @transactions << { method: 'withdraw', amount: money, date: date }
  end

  def statement
    return @transactions
  end
end
