#story time!

#enter a small room with 3 doors
	#call this function start for start of game
def start
	puts "You enter a small room, not too small but quite small"
	puts "There are 3 doors to choose from. "
	puts "...how original"
	puts "which one do you choose? 1  2  or  3 ?"
	print "> "
	door = $stdin.gets.chomp

	if door == "1"
		puts "ah good choice, sucker..."
		door1
	elsif door == "2"
		puts "As you look at the door you notice hyroglyphys of weapons.."
		door2
	elsif door == "3"
		puts "Something seems spooky about this..."
		door3
	else
		puts "poor choice, you fell on some spikes and died."
	end
end

def door1
	puts "There is a bomb in the middle of the room, defuse it or die."
	code = rand(10)
	guesses = 0
	guess = 0
	
	while guesses < 10 && guess != code
		guess = $stdin.gets.chomp.to_i
		if guess != code 
			if guesses == 9
				puts "Boom you die"
				exit(0)
			end
			guesses += 1
			puts "Try again..."
		elsif guess == code 
			puts "Well done on you go"
			door2
		end
	end
end

def door2
	puts "You enter a room and see a button really far away"
	puts "It must open that door over there.."
	puts "You go to move and then realize there are flesh cutting lasers inches in front of you. "
	puts "You will have to approach this another way."
	puts "..........."
	puts "Luckily there are 3 weapons on the ground, which do you choose?"
	puts "sword, shield, or bow"
	weapon = $stdin.gets.chomp


	if weapon.downcase == "sword"
		puts "You lift the sword with such vigor that you loose your balance and fall into the lasers where you meet death"
		exit(0)
	elsif weapon.downcase == "shield"
		puts "You raise the shield above your head"
		puts "You walk along the room, lasers ping off your shiny shield"
		puts "You reach the button to open the door"
		puts "You reach up to press the button, in doing so you also lower your shield, I guess some stories don't have a happy ending."
		exit(0)
	elsif weapon.downcase == "bow"
		puts "You reach down and pick up a willow bow."
		puts "You pick up a single arrow and pull back."
		puts "You release and watch in amazement as the arrow skims past all the lasers and hits the button."
		puts "The lasers fade and the door opens."
		puts "Good job"
		final_room
	else 
		puts "Any last words?"
		gets.chomp
		puts "Goodbye"
	end


end

def door3
	
	puts "Some rooms shouldn't be entered"
	puts "A ghost passes through you"

	
		puts "what do you do? punch or kick ?"
		action = gets.chomp

		if action.downcase == "punch"
			puts "You fell right through that ghost unlucky"
			exit(0)
		elsif action.downcase == "kick"
			puts "the ghosts life is now 0"
			puts "Sweet final room"
		else 
			puts "fail"
		end
	
	final_room
end



def final_room
	puts "how much gold and silver do you want?"
	money = gets.chomp

	if money.to_i > 10
		puts "Too much friend"
	elsif money.to_i < 10 
		puts "savory indeed, no you don't need too much just enough"
		puts "Life is about the small things, enjoy them becuase the universe is bigger than all of us."
	end
end


start