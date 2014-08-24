def prompt()
	print ">"
end

def free_money_test()
	puts "There's a pile of money right in front of you."
	puts "How much are you going to take?"
	puts "----------------------------------------------"

	prompt; next_move = gets.chomp
	if next_move.include? "0" or next_move.include? "1"
		how_much = next_move.to_i()
	else
		dead("How hard was it to type a number?!")
	end

	if how_much < 100
		puts "A fair amount to take! You've passed the test."
		Process.exit(0)
	else
		dead("You got greedy. A piano falls from the sky and crushes you. ")
	end
end

def cat_emporium()
	puts "There are a ton of cats here."
	puts "Its as if they control the room."
	puts "They seem to be blocking the entrance to the next room."
	puts "How do you plan on getting passed this army of cats?"
	puts "----------------------------------------------------"
	puts " "
	puts "1. Yell really loud."
	puts "2. Carefully step over each cat and head through the door."
	puts "3. Toss the cat-nip conveniently placed at your feet at them to create a distraction."
	cats_moved = false

	while true
		prompt; next_move = gets.chomp

		if next_move == "1" or next_move == "2"
			dead("You've angered the army. They maul you to death!")
		elsif next_move == "3" and not cats_moved
			puts "The cats are distracted! Make a run for it!"
			puts "-------------------------------------------"
			cats_moved = true
			dog_room()
		else
			puts "I dont know what that means, so the cats killed you."
		end
	end
end

def dog_room()
	puts "As you enter the room, you see a vicious looking dog named Princess."
	puts "She stares at you with an intimidating, yet confusing look."
	puts "-----------------------------------------------------------"
	puts "Do you"
	puts "A. Dare to pet her and calm the beast?"
	puts "Or"
	puts "B. Eat your head?"

	prompt; next_move = gets.chomp

	if next_move.include? "a"
		start()
	elsif next_move.include? "b"
		dead ("Delicious.")
	else
		dog_room
	end
end

def dead(why)
	puts "#{why} Way to go!"
	Process.exit(0)
end


def start()
	puts "You enter a dark room."
	puts "There is a door on your right, and one on your left."
	puts "Which one do you take?"

	prompt; next_move = gets.chomp

	if next_move == "left"
		cat_emporium()
	elsif next_move == "right"
		dog_room()
	else
		dead ("You spin around in circles until you melt.")
	end
end

start()













