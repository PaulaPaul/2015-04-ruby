# # Types of loops
# #  for, while, until, array.each  (also, array.each_with_index), n.times

#  5.times do
#  	puts "Ruby is cool"
#  end


# # The only way to break out of a 'times' or an in x..y loop is to break
  5.times do |i|  #|i| is a block variable - don't mess with block variables inside the block :)
  	puts i
 	  i = 27
  	puts i
  end

# # puts " For i in 0..5 "

#  for i in 0..5 do
#  	puts i
#  	i = 7
#  	puts i
#  end

#  groceries = ["bread", "ice cream", "noodles", "gum", "oranges"]
#  groceries.each do |item|
#  	puts "Don't forget to buy #{item}!"
#  	item = "all gone"
#  end
#  puts groceries

# # numbers = [10, 20, 30, 40]

#  numbers.each_with_index do |foo, index|
#  	puts "num = #{foo}, index = #{index}"
#  	numbers[index] =  numbers[index] + foo 
#  end
#  puts " " 

#  #also... in reverse order
#  numbers.reverse.each_with_index do |foo, index|
#  	puts "num = #{foo}, index = #{index}"
#  	numbers[index] =  numbers[index] + foo 
#  end
#  puts numbers

#  x = false
#  while x == true
#  	puts x
#  	x = false
#  end

#  x = true
#  until x == true
#  	puts x
#  	x = true
#  end


# a1 = [1,2,3]
# a2 = [2,3,4]
# a3 = [3,4,5]

# myhash = {a1 => "red", a2 => "yellow", a3 => "blue"}
# puts myhash[a3]
# puts myhash[[1,2,3]]
# puts myhash.inspect

# if 1 < -1
# 	x = 5
# end
# puts x
