def rollem
  die1 = [1,2,3,4,5,6]
  die2 = [1,2,3,4,5,6]
  
  roll1 = die1.sample
  roll2 = die2.sample
  result = [roll1, roll2]
end

def rollem_rand
  roll1 = rand(1..6)
  roll2 = rand(1..6)
  result = [roll1, roll2]
end

first_roll = rollem_rand
puts "First roll, you rolled: " + first_roll.inspect
if first_roll[0] == first_roll[1]
  puts "doubles!"
end
puts " "

second_roll = rollem
puts "Second roll, you rolled: " + second_roll.inspect
if second_roll[0] == second_roll[1]
  puts "doubles!"
end
# see who wins...
puts ""
first_roll_total = first_roll[0] + first_roll[1]
second_roll_total = second_roll[0] + second_roll[1]

if  first_roll_total == second_roll_total
  puts "First roll ties Second roll, with a total of:" + first_roll_total.to_s
elsif first_roll_total > second_roll_total
  puts "First roll wins! with a total of:" + first_roll_total.to_s
else
  puts "Second roll wins! with a total of: " + second_roll_total.to_s
end

