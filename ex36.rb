
puts "In this game, you are married. Are you married to a man or a woman?"
answer = gets.chomp.downcase

if answer == "woman"; $spouse = "wife"
	elsif answer == "man"; $spouse = "husband"
	else $spouse = "spouse"
end


def pray_to_god
 puts "Really? That's the best you can do? Try agan. Do you pray, let #{$spouse} deal with the kids, or run off the plan screaming?"
 answer = gets.chomp.downcase	

 if answer == "pray"; talk_to_god
 	elsif answer == "let #{$spouse} deal with the kids"; spouse_kids
 	else divorce
 	end
end


def spouse_kids
	puts "Is your #{$spouse} patient?"
	answer = gets.chomp.downcase
	if answer == "yes"; puts "Lucky. Your #{$spouse} asks you to help. Do you put on headphones, pray, or run off the plane screaming?"
		answer_2 = gets.chomp.downcase
		if answer_2 == "put on headphones"; headphones
			elsif answer_2 == "pray"; talk_to_god
			else divorce
		end
	else divorce
	end
end


def headphones
	puts "Do you put on headphones to listen to music or just to block out the noise of screaming children?"
	answer = gets.chomp.downcase
	if answer == "listen to music"; puts "Good idea! Have a nice trip."
	else "Huh. I think you should talk to God."; talk_to_god
	end
end

def talk_to_god
	puts "Do you believe in God? Answer yes, not sure, or no."
	answer = gets.chomp.downcase
	if answer == "yes"; puts "What do you say to God? Do you ask for help or say what's up?"
		answer_2 = gets.chomp.downcase
		if answer_2 == "help"; nice_god
		else divorce
		end
	elsif answer == "not sure"; talk_to_neighbor
	else divorce
	end
end

def nice_god
puts "God tells you to be nice to #{$spouse} so maybe your #{$spouse} will be patient. Will you be nice to your #{$spouse}?"
answer = gets.chomp.downcase
	if answer == "yes"; spouse_kids
	else divorce
	end
end


def talk_to_neighbor
	puts "Ok, let's talking to the guy sitting next to you. Does he seem nice?"
	answer = gets.chomp.downcase
	if answer == "yes"; puts "Ask him if he's God. Is he God?"
		answer_2 = gets.chomp.downcase
		if answer_2 == "yes"; talk_to_god
		else divorce
		end
	else headphones
	end
end

def divorce
	puts "You are a miserable human being. Your #{$spouse} divorces you. The end."
end



puts "You and your #{$spouse} are on an airplane with your three young children, about to take off for Disney world."
puts "Do you pray, let #{$spouse} deal with the kids, or run off the plan screaming?"
plane_response = gets.chomp.downcase

if plane_response == "pray"; pray_to_god
elsif plane_response == "let #{$spouse} deal with the kids"; spouse_kids
else divorce
end

			