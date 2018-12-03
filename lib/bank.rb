class Bank

  attr_reader :account, :history, :dates

  def initialize
    @account = 0
    @history = []
    @dates = []
  end

  def hello
    'Hello World'
  end

  def deposit(money, date)
    @account += money
    @history.push(money)
    @dates.push(date)
  end

  def withdraw(money, date)
    @account -= money
    @history.push(money)
    @dates.push(date)
  end

  def statement

  end
end
