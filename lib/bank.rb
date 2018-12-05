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
    @transactions << { method: 'deposit', credit: money, date: date, balance: @account }
  end

  def withdraw(money, date)
    @account -= money
    @history.push(money)
    @dates.push(date)
    @transactions << { method: 'withdraw', debit: money, date: date, balance: @account }
  end

  def transaction_check
    return @transactions
  end

  def statement
    message_statement = "date || credit || debit || balance\n"
    @transactions.reverse.each do |transaction|
      if transaction[:credit] == nil
        message_statement += "#{transaction[:date]} || || #{transaction[:debit]}.00 || #{transaction[:balance]}.00\n"
      else
        message_statement += "#{transaction[:date]} || #{transaction[:credit]}.00 || || #{transaction[:balance]}.00\n"
      end
    end
    return message_statement
  end
end
