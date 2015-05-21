bottles = 99
for n in 0..99 
  puts "#{bottles} bottles of beer on the wall!"
  bottles = bottles - 1
end
# Comment:  0..99 represents a Range. The for loop sets n to each number in the range from low to high.

99.downto(0){|n| puts "#{n} bottles of beer on the wall!"}
 
 n = 99
 100.times do
   puts "#{n} bottles of beer on the wall!"
   n = n-1       # take one down, pass it around...
 end
# Comment: this loop prints out bottles from 99 down to zero, but winds up with a negative loop variable

bottles_arr = (0..99).to_a  # make an array of numbers from 0 to 99
bottles_arr.each do |n|
  puts "#{99 - n} bottles of beer on the wall!"
end

beer_counter = 0
while beer_counter < 100
  puts "#{99 - beer_counter} bottles of beer on the wall!"
  beer_counter = beer_counter + 1
end
  
beer_counter = 0
begin
  puts "#{99 - beer_counter} bottles of beer on the wall!"
  beer_counter = beer_counter + 1
end until beer_counter == 100
