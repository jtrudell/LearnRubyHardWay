

puts "Enter a number:"
number = gets.chomp.to_i

def multiply(x)
	puts x * x
end

multiply(number)

BEGIN {puts "HI!"}
END {puts "BYE!"}