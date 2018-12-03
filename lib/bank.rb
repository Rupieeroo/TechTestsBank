class Bank

  attr_reader :account

  def initialize
    @account = 0
  end

  def hello
    'Hello World'
  end

  def deposit(money)
    @account += money
  end

end
