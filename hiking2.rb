def going_hiking(temperature)
	if temperature == 23 
		answer = "It's #{temperature} degrees!"
	elsif temperature < 50
		answer = "#{temperature} degrees is too cold--Brrrr!!!"	
	else
		answer = "#{temperature} degrees is perfect for hiking!"	
	end	
	return answer
end

def going_hiking2(temperature)
	if temperature != 23 && temperature < 50
		answer = "It's #{temperature} degrees!"
	elsif temperature == 23
		answer = "#{temperature} degrees is too cold--Brrrr!!!"	
	else
		answer = "#{temperature} degrees is perfect for hiking!"	
	end	
	return answer
end

puts "What's the temperature?"
user_input = gets.chomp.to_i
puts going_hiking(user_input)


