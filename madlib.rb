# This collects information from the user to create two mad libs 
# based on 'Mary had a little lamb':
#
# famous_person had a little animal
# its body_part was color as food
# and everywhere that famous_person went
# the animal was sure to action_verb
# 
# and, 'The itsy-bitsy spider':
# 
# The itsy-bitsy animal action_verbed up the place
# down came the weather and washed the animal out
# out came the celestial_body and dried up all the weather, and
# the itsy-bitsy animal went up the place again.

puts "Hello! What's your name?"
user_name = gets.chomp

puts "Welcome to the nursery rhymes madlib " + user_name + "!"
# start collecting words from the user and store them in variables for later...
  puts "Tell me the name of your favorite celebrity:"
  famous_person = gets.chomp

  puts "Tell me a type of animal:"
  animal = gets.chomp

  puts "Tell me a body part:"
  body_part = gets.chomp

  puts "Tell me a color:"
  color = gets.chomp

  puts "Tell me your favorite food:"
  food = gets.chomp

  puts "Tell me an action verb:"
  action_verb = gets.chomp

  puts "Tell me the name of a place:"
  place = gets.chomp

  puts "Tell me a type of weather or natural event (rain, snow, sleet, hail, tornado, earthquake... you get the idea):"
  weather = gets.chomp

  puts "Tell me the name of a planet or star (some kind of celestial_body):"
  celestial_body = gets.chomp

# ok, we have all the input from the user, now print out the results:
  puts "Thanks " + user_name  + "!  Here's your personalized version of 'Mary had a Little Lamb'..."
  puts ""
  puts famous_person + " had a little " + animal + ","
  puts "it's " + body_part + " was " + color + " as " + food + "."
  puts "and everywhere that " + famous_person + " went "
  puts "the " + animal + " was sure to go!"
  puts ""
# make the user press any key to get the second mad lib:
  puts "That was great, wasn't it?  Let's do another one! Hit Enter when you're ready!"
  gets
  puts ""
  puts "Thanks again " + user_name  + "!  Here's your personalized version of 'The Itsy-Bitsy Spider'..."
  puts ""
  puts "The itsy-bitsy " + animal + " went up the " + place + " spout."
  puts "Down came the " + weather + ", and " + action_verb + "ed the " + animal + " out."
  puts "Out came the " + celestial_body + ", and dried up all the " + weather + ", and"
  puts "The itsy-bitsy " + animal + " went up the " + place + " spout again!"
  puts ""

puts " "
puts "Thanks for playing!"