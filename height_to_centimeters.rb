puts "Hello! What is your height in inches?"
x = gets.chomp 
y = x.to_i * 2.54
puts "Congratulations!  You are " + y.to_s + " centimeters tall!"