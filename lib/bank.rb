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
    if money <= 0
      raise 'Deposit Error, please try again'
    else
      @account += money
      @history.push(money)
      @dates.push(date)
      @transactions << { method: 'deposit', credit: money, date: date, balance: @account }
    end
  end

  def withdraw(money, date)
    if @account < money
      raise 'Withdraw Error, please try again'
    else
      @account -= money
      @history.push(money)
      @dates.push(date)
      @transactions << { method: 'withdraw', debit: money, date: date, balance: @account }
    end
  end

  def transaction_check
    @transactions
  end

  def statement
    message_statement = "date || credit || debit || balance\n"
    @transactions.reverse_each do |tr|
      # Thought about refactoring this into a ternary operator, but it would have been too long.
      if tr[:credit].nil?
        message_statement += "#{tr[:date]} || || #{tr[:debit]}.00 || #{tr[:balance]}.00\n"
      else
        message_statement += "#{tr[:date]} || #{tr[:credit]}.00 || || #{tr[:balance]}.00\n"
      end
    end
    message_statement
  end
end
