## rock paper scissors lizard spock - play with the computer

#make hashes of the non-tie outcomes and the reasons why:
# user 		computer 	who wins (why)
#-----------------------------------
# rock		scissors	user (rock crushes scissors)
# rock		paper		computer (paper covers rock)
# scissors	paper		user (scissors cuts paper)
# scissors	rock		computer (rock crushes scissors)
# paper		rock		user (paper covers rock)
# paper		scissors	computer (scissors cuts paper)
# -- adding lizard and spock weapons
# rock 		lizard		user (rock crushes lizard)
# rock 		spock	    computer (spock vaporises rock)
# scissors 	lizard		user (scissor decapitates lizard)
# scissors  spock		computer (spock smashes scissors)
# paper 	lizard 		computer (lizard eats paper)
# paper 	spock		user (paper disproves spock)
# lizard	spock		user (lizard poisons spock)
# lizard	paper 		user (lizard eats paper)
# lizard	rock  		computer (rock crushes lizard)
# lizard	scissors 	computer (scissors decapitates lizard)
# spock		scissors 	user (spock smashes scissors)
# spock		rock 		user (spock vaporises rock)
# spock		paper  		computer (paper disproves spock)
# spock		lizard  	computer (lizard poisons spock)

weapons = ["rock", "paper", "scissors", "lizard", "spock"]
who_wins = {
	"rockscissors" 	=> "user",
	"paperrock" 	=> "user",
	"scissorspaper" => "user",
	"rockpaper" 	=> "computer",
	"paperscissors" => "computer",
	"scissorsrock" 	=> "computer",
	"rocklizard" => "user",
	"rockspock" => "computer",
	"scissorslizard" => "user",
	"scissorsspock" => "computer", 
	"paperlizard" => "computer",
	"paperspock" => "user",
	"lizardspock" => "user",
	"lizardpaper" => "user",
	"lizardrock " => "computer",
	"lizardscissors" => "computer",
	"spockscissors" => "user",
	"spockrock" => "user",
	"spockpaper" => "computer",
	"spocklizard" => "computer"
	}

	why = {
	"rockscissors" 	=> "rock crushes scissors!",
	"paperrock" 	=> "paper covers rock!",
	"scissorspaper" => "scissors cuts paper!",
	"rockpaper" 	=> "paper covers rock!",
	"paperscissors" => "scissors cuts paper!",
	"scissorsrock" 	=> "rock crushes scissors!",
	"rocklizard" => "rock crushes lizard!",
	"rockspock" => "spock vaporises rock!",
	"scissorslizard" => "scissors decapitates lizard",
	"scissorsspock" => "spock smashes scissors", 
	"paperlizard" => "computer",
	"paperspock" => "user",
	"lizardspock" => "user",
	"lizardpaper" => "user",
	"lizardrock " => "computer",
	"lizardscissors" => "computer",
	"spockscissors" => "user",
	"spockrock" => "user",
	"spockpaper" => "computer",
	"spocklizard" => "computer"
	}

computer_score = 0
user_score = 0
user_weapon = " "
computer_weapon = " "

# get input, test for the tie case, then if not a tie get who wins from the hash
while computer_score <5 && user_score <5
    # get some input and check if is valid
	user_weapon = " "
	while !weapons.include?(user_weapon) # == false
		puts "please choose your weapon (enter 'rock', 'paper', 'scissors', 'lizard' or 'spock')"
		user_weapon = gets.chomp.downcase
		# puts user_weapon
	end
	
	# choose a weapon for the computer
	computer_weapon = weapons.sample
	
	# duel to the death!
	puts "you chose #{user_weapon}, computer chose #{computer_weapon}:"
	if user_weapon == computer_weapon
		puts "  tie!  Score remains you=#{user_score}, computer=#{computer_score}"
	elsif who_wins[user_weapon+computer_weapon] == "user"
		puts "  you win!  Score is you=#{user_score+1}, computer=#{computer_score}"
		user_score +=1
	else
		puts "  computer wins!  Score is you=#{user_score}, computer=#{computer_score +1}"
		computer_score +=1
	end

end
puts "Thanks for playing!  Final score is you=#{user_score}, computer=#{computer_score}"
