done = false

while done == false

  week = ["1st","2nd","3rd","4th","5th","6th","7th","8th"]
  puts "Want to know what week it is?  Hit enter!"

  gets
  puts "It's the " + week[3] + " week of class!"

  puts "want me to ask you again?  Enter 'OK' if you've had enough"
  donetext = gets.chomp.upcase
  if donetext == "OK"
    done = true
  end
 
end