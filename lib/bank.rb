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

  def transaction_method
    return @transactions
  end

  def statement
    # state =  "date || credit || debit || balance\n      #{@transactions[-1][:date]} || || #{@transactions[-1][:debit]}.00 || #{@account}.00\n      #{@transactions[-2][:date]} || #{@transactions[-2][:credit]}.00 || || #{@account + @transactions[-1][:debit]}.00\n      #{@transactions[-3][:date]} || #{@transactions[-3][:credit]}.00 || || #{@account + @transactions[-1][:debit] - @transactions[-2][:credit] }.00"
    # return state
    @tally = 0
    message_statement = "date || credit || debit || balance\n"
    @transactions.each do |transaction|
      if transaction[:credit] == nil
        message_statement += "#{transaction[:date]} || || #{transaction[:debit]}.00 || #{(@tally -= transaction[:debit])}.00\n"
      else
        message_statement += "#{transaction[:date]} || #{transaction[:credit]}.00 || || #{(@tally += transaction[:credit])}.00\n"
      end
    end
    return message_statement
  end
end
