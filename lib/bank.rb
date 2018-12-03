class Bank

  attr_reader :account, :history, :dates

  def initialize
    @account = 0
    @history = []
  end

  def hello
    'Hello World'
  end

  def deposit(money)
    @account += money
    @history.push(money)
    print @history
  end

  def withdraw(money)
    @account -= money
    @history.push(money)
  end

  def statement

  end
end
