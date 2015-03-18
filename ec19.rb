# this is extra credit for exercise 19

def your_birthday(your_month, your_day)
	puts "Your birtday month is #{your_month}!"
	puts "Your birthday day is #{your_day}!"
	puts "Your birthday is #{your_month} #{your_day}!"
	puts # a blank line
end

your_birthday("March", 12)

a_month = "March"
a_day = 12
your_birthday(a_month, a_day)

your_birthday("M" + "ay", 8+1)

prompt = ":"
print "What month is your birthday?#{prompt}"
enter_month = gets.chomp

print "What day is your birthday?#{prompt}"
enter_day = gets.chomp

your_birthday(enter_month, enter_day)
