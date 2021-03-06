# This class prints the statement
class Statement
  def statement(transactions)
    message_statement = "date || credit || debit || balance\n"
    transactions.reverse_each do |tr|
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
