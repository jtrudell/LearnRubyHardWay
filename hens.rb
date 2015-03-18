jacksHens = 13
jillsHens = 2+1
hens = (jacksHens + jillsHens).to_s
text_about_hens = "So Jack and Jill have "
puts text_about_hens + hens + " hens total? \nThat's a lot of hens!"
puts "How many of those hens are Jack's?"
puts hens.to_i - jillsHens
puts "How many hens do you think Jack should have?"
jackUserInput = gets.chomp().to_i
if jackUserInput < jacksHens
	jackShouldHave = "No way! Jack wants MORE hens, not less!"
else jackShouldHave = "That's great! Jack would love to have #{jackUserInput} hens!"
end
puts jackShouldHave