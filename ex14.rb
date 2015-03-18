user = ARGV.first
prompt = ': '

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
print "Do you like me, #{user}?", prompt
likes = STDIN.gets.chomp()

print "Where do you live, #{user}?", prompt
lives = STDIN.gets.chomp()

print "What kind of computer do you have?", prompt
computer = STDIN.gets.chomp()

print "Where's Waldo?", prompt
waldo = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer}. Nice.
Oh, you think Waldo is in #{waldo}? Good theory.
MESSAGE