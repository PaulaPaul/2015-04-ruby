def who_wins(user_weapon, computer_weapon)
  
  #your code goes here!
  
end

# Rock, Paper Scissors
weapons = ["rock", "paper", "scissors"]
computer_score = 0
user_score = 0

# get input, test for the tie case, then if not a tie get who wins from the hash
while computer_score <5 && user_score <5
  # get some input and check if is valid
	user_weapon = " "
  while !weapons.include?(user_weapon) # loop until the user chooses a valid weapon
		puts "please choose your weapon (enter 'rock', 'paper' or 'scissors')"
    user_weapon = gets.chomp.downcase
	end
	# choose a weapon for the computer
	computer_weapon = weapons.sample
  # rumble!
	puts "you chose #{user_weapon}, computer chose #{computer_weapon}:"
	if user_weapon == computer_weapon
		puts "  tie!  Score remains you=#{user_score}, computer=#{computer_score}"
	elsif who_wins(user_weapon, computer_weapon) == "user"
		puts "  you win!  Score is you=#{user_score+1}, computer=#{computer_score}"
		user_score +=1
	else
		puts "  computer wins!  Score is you=#{user_score}, computer=#{computer_score +1}"
		computer_score +=1
	end

end
puts "Thanks for playing!  Final score is you=#{user_score}, computer=#{computer_score}"