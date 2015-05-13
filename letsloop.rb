for n in 0..9
	puts "#{n}! Birds on a wire.  Ha-ha-ha."
end

n = 0
while n < 10
	puts "#{n}! Birds on a wire.  Ha-ha-ha."
	n = n + 1
end

birds = [10,9,8,7,6,5,4,3,2,1]
birds.each do |n|
  puts "#{n}! Birds on a wire.  Ha-ha-ha."
end