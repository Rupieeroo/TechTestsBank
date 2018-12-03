require 'bank'

describe 'Test working' do
  it 'Test works' do
    bank = Bank.new
    expect(bank.hello).to eq('Hello World')
  end

  describe 'Depositing money' do
    it 'Deposits money into a users account' do
      bank = Bank.new
      bank.deposit(1000)
      expect(bank.account).to eq(1000)
    end
  end
end
