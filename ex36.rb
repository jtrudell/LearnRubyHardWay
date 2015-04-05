$prompt = ">>"

puts "*******************"
puts
puts "This is a game. Type your answers exactly as they are presented in the questions."
puts "In this game, you are married. Are you married to a man or a woman?"
print $prompt
answer = gets.chomp.downcase
puts

if answer == "woman"; $spouse = "wife"
	elsif answer == "man"; $spouse = "husband"
	else $spouse = "#{answer}"
end

def pray_to_god
 puts "Really? The best you can do is pray? Try agan."
 puts "Do you: pray, let your #{$spouse} deal with the kids, or run off the plane screaming?"
 print $prompt
 answer = gets.chomp.downcase
 puts

 	if answer == "pray"; talk_to_god
 	elsif answer == "let your #{$spouse} deal with the kids"; spouse_kids
 	else divorce
 	end
end

def spouse_kids
	puts "Is your #{$spouse} patient?"
	print $prompt
	answer = gets.chomp.downcase
	puts
	if answer == "yes"; puts "Lucky. Your #{$spouse} asks you to help. Do you: put on headphones, pray, or run off the plane screaming?"
		print $prompt
		answer_2 = gets.chomp.downcase
		puts
		if answer_2 == "put on headphones"; headphones
		elsif answer_2 == "pray"; pray_to_god
		else divorce
		end
	else divorce
	end
end

def headphones
	puts "Ok, great, you put on headphones."
	puts "Do you: put on headphones to listen to music or just to block out the sound of your screaming children?"
	print $prompt
	answer = gets.chomp.downcase
	puts
	if answer == "listen to music"; puts "Good idea! Have a nice trip."
	else puts "Huh. I think you should talk to God about the fact that you are a jerk."; talk_to_god
	end
end

def talk_to_god
	puts "Do you believe in God? Answer: yes, not sure, or no."
	print $prompt
	answer = gets.chomp.downcase
	puts
	if answer == "yes"; puts "What do you say to God? Do you: ask for help or take the Lord's name in vain?"
		print $prompt
		answer_2 = gets.chomp.downcase
		puts
		if answer_2 == "ask for help"; nice_god
		else divorce
		end
	elsif answer == "not sure"; talk_to_neighbor
	else divorce
	end
end

def nice_god
puts "God tells you to be nice to your #{$spouse} so maybe your #{$spouse} will be patient."
puts "Will you be nice to your #{$spouse}? Answer: yes or no."
print $prompt
answer = gets.chomp.downcase
puts
	if answer == "yes"; spouse_kids
	else divorce
	end
end

def talk_to_neighbor
	puts "Ok, let's talk to the woman sitting next to you. Does she seem nice?"
	print $prompt
	answer = gets.chomp.downcase
	puts
	if answer == "yes"; puts "Ask her if she's God. What's her answer? Answer: yes or no."
		print $prompt
		answer_2 = gets.chomp.downcase
		puts
		if answer_2 == "yes"; talk_to_god
		else divorce
		end
	else divorce
	end
end

def divorce
	puts "You are a miserable human being. Your #{$spouse} divorces you. The end."
	puts "*******************"
	puts
end

weather = ["sunny", "gloomy", "misty", "hot"]
location = ["Orlando, Florida", "New York City", "Des Moines, Iowa", "Hell"]
children = rand(2..20)

if children >15; location = location[-1]
else location = location[rand(0..3)]
end


puts "You and your #{$spouse} are on an airplane with your #{children} young children."
puts "The airplane is about to take off for #{weather[rand(0..3)]} #{location}."
puts "Your kids are screaming and won't sit in their seats."
puts "Do you: pray, let your #{$spouse} deal with the kids, or run off the plan screaming?"
print $prompt
plane_response = gets.chomp.downcase
puts

if plane_response == "pray"; pray_to_god
elsif plane_response == "let your #{$spouse} deal with the kids"; spouse_kids
else divorce
end

			