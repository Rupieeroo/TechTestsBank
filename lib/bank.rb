class Bank

  def initialize(account)
    @account = account
  end

  def hello
    'Hello World'
  end

  def deposit(money)
    account.push(money)
  end

end
