def get_an_integer
	puts "Please enter a non-zero integer:"
	theint = gets.chomp.to_i
	return theint
end

# the divider.rb app starts to execute from top to bottom, starting here...
# blocks of code defined as methods, surrounded by def and end, are only executed when called.
puts "Hello!  I will ask you to enter two integers, then I'll divide the first by the second and give you the result with remainder.  Here we go..."
firstInt = get_an_integer
while firstInt == 0
	firstInt = get_an_integer
end

puts "Great! You've selected #{firstInt} as your first integer.  Now I need another one:"
secondInt = get_an_integer
while secondInt == 0
	secondInt = get_an_integer
end

puts "Perfect! You said to calculate: #{firstInt} / #{secondInt}"
puts "The answer is: #{firstInt/secondInt} with a remainder of #{firstInt % secondInt}"