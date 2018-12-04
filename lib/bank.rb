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
    state =  "date || credit || debit || balance\n      #{@transactions[-1][:date]} || || #{@transactions[-1][:debit]}.00 || #{@account}.00\n      #{@transactions[-2][:date]} || #{@transactions[-2][:credit]}.00 || || #{@account + @transactions[-1][:debit]}.00\n      #{@transactions[-3][:date]} || #{@transactions[-3][:credit]}.00 || || #{history[-3]}.00"
    return state
  end
end
