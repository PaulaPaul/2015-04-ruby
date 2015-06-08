def subtract_money(original_balance)
  new_balance = original_balance - 1
end

# Note, the variable 'new_balance' is only visible inside the subtract_money method
# the value 'returned' when you call subtract_money is the value of the balance 
# parameter passed in (called 'original_balance'), less 1.
# the variable names 'original_balance' and 'new_balance' are only visible inside
# the subtract_money method...

puts "Here we go!"
the_balance = 100
10.times do 
  puts the_balance
  the_balance = subtract_money(the_balance)
end