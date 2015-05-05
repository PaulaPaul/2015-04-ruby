class Word < String # class Word inherits from String

  def very_long?(string)  #question mark at the end of method is a convention - it returns boolean T/F
		if string.length >= 10
			puts true
			#return true
		else
			puts false  
			#return false
		end
	end

end

w = Word.new 
w.very_long?("hello there")

puts "returning the class of the value returned by Word.very_long?"
puts w.very_long?("superduperlongword").class	

puts "returning the class of 'x' (the instance variable)"
puts "#{w.class}"

puts "returning the class of Word"
puts "#{Word.class}"

puts "returning the superclass of Word"
puts "#{Word.superclass}"

puts "Syntax - Word.new.very_long?('text')"
Word.new.very_long?("short")

puts "puts w"
puts w

# after inheriting from String, you can do this
w = Word.new("Word is like a String with my own stuff")

puts w
