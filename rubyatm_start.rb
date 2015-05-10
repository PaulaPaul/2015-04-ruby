def atm_action(balance, action)

  case action
    when '1'  # withdrawal

    when '2'  # deposit
    	
    when '3'  # show me my balance
    
    when 'exit'  # leave the ATM
    	puts "Thanks for banking with the Ruby ATM!"
    else
    	puts "Invalid selection, try again!"
  end 
 
  return balance
end

# code starts executing here, and calls the atm_action method until exit...
puts "Hello! What's your name?"
name = gets.chomp

puts "Welcome to the Ruby ATM.  Please enter your initial deposit:"
balance = gets.chomp.to_f

action = ""
while action != 'exit'
   puts " "
   puts "Please enter your selection:"
   puts "  * Enter 1 for withdrawals "
   puts "  * Enter 2 for deposits "
   puts "  * Enter 3 to check your balance "
   puts "  * Enter exit to leave the Ruby ATM "

   action = gets.chomp.downcase

   balance = atm_action(balance, action)
   puts "Transaction complete."
end