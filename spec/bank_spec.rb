require 'bank'

describe 'Test working' do
  it 'Test works' do
    bank = Bank.new
    expect(bank.hello).to eq('Hello World')
  end
end
