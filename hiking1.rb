todays_temperature = 75

puts "what's the temperature?"
todays_temperature = gets.chomp.to_i

if todays_temperature > 50
  puts "Let's go hiking!"
elsif todays_temperature < 32
  puts "it's cold!!!"
elsif todays_temperature == 42
  puts "that's the answer to life, the universe, and everything!"
else 
  puts "it's not warm enough to hike, but not that cold."
end