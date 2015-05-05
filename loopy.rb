for n in 1..5 do
  puts "We are at number #{n}"
end

1.upto(5){|n| puts "We are at number #{n}"}

5.times do |n|
  puts "We are at number #{n+1}"
end

[1,2,3,4,5].each do |n|
  puts "We are at number #{n}"
end

# for fun...
my_str = "Ho!"
my_str.length.times do
  puts my_str
end