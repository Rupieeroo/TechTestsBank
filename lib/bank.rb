require_relative 'statement'
# This is the Bank class
class Bank < Statement
  attr_reader :account, :history, :dates, :statement

  def initialize(statement = Statement.new)
    @account = 0
    @history = []
    @dates = []
    @transactions = []
    @statement = statement
  end

  def hello
    'Hello World'
  end

  def deposit(money, date)
    raise 'Deposit Error, please try again' if money <= 0

    @account += money
    @history.push(money)
    @dates.push(date)
    @transactions << { method: 'deposit', credit: money, date: date, balance: @account }
  end

  def withdraw(money, date)
    raise 'Withdraw Error, please try again' if @account < money

    @account -= money
    @history.push(money)
    @dates.push(date)
    @transactions << { method: 'withdraw', debit: money, date: date, balance: @account }
  end

  def transaction_check
    @transactions
  end

  def self.statement
    statement
  end
end
