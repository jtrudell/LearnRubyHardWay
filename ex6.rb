# This defines a variable called x, which means the phrase There are 10 types of people. 
x = "There are #{10} types of people."
# This defines a variable called binary, which means the word binary
binary = "binary"
# This defines a variable called do_not, which means the word don't
do_not = "don't"
# this defines a variable called y, which means the phrase Those who know binary and those who don't. 
y = "Those who know #{binary} and those who #{do_not}."

# This prints out "There are 10 types of people." and starts a new line
puts x
# This prints out "Those who know binary and those who don't." and starts a new line
puts y

# This prints out "I said: There are 10 types of people.."
puts "I said: #{x}."
# This prints out "I also said: 'Those who know binary and those who don't.'."
puts "I also said: '#{y}'."

# This defines a variable called false and sets it to false
hilarious = false

# this defines a variable called joke_evaluation which means the phrase Isn't that joke so funny?! false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# this prints "Isn't that joke so funny?! false"
puts joke_evaluation

# this defines a variable called w which means This is the left side of...
w = "This is the left side of..."
# this defines a variable called e which means a string with a right side.
e = "a string with a right side."

# this prints "This is the left side of...a string with a right side."
puts w + e
