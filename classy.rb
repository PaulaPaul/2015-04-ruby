# start of the definition of the template for a Person
class Person
  attr_accessor :first_name, :last_name
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
  
  def full_name
    return @last_name + ", " + @first_name
  end
  
  def say_something
    puts "hello classy!  My name is " + @first_name  
  end  
end
# end of the template definition for a Person

# start of the template definition for a Teacher
# Teacher inherits characteristics (attributes and methods) from Person
class Teacher < Person
  def teach
    puts "Let's learn to code!"
  end
end
#
# code starts executing here... 
# class and method definitions aren't executed unless called (methods)
#   or 'instantiated' (fancy way of saying you create an object based on a class, like var = Teacher.new)
prof = Teacher.new("Paula","Paul")
prof.say_something
prof.teach


paula = Person.new("Paula", "Paul")
puts paula.full_name + " says... " 
paula.say_something
puts " "  # just some blank space between puts'

people = []
people.push Person.new("John", "Doe")
people.push Person.new("Mary", "Mac")
people.push Person.new("Tommy", "Tunes")

people[0].say_something
people[1].say_something
people[2].say_something

#gee, what if there was an easy way to get 
#all these people to say something, no matter how many?
puts " " # make some space
people.each do |person|
  person.say_something
end


