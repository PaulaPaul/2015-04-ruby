puts "what's your fav color"
user_color = gets.chomp

until user_color == "red"
   puts "try again, that's not your fav color..."
   user_color = gets.chomp
end
puts "best color ever!"
