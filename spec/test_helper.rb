require './lib/bank'
require_relative 'spec_helper'

def open_account_and_deposit
  bank = Bank.new
  bank.deposit(1000, '10/01/2012')
  bank
end
