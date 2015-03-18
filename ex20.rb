# input_file is the first argument in the command line after the program being run
input_file = ARGV[0]

# defines a method print_all, which takes an argument f and puts f on the screen
def print_all(f)
	puts f.read()
end

# defines a method rewind, which takes an argument f, and does "seek" to it to set the start to 0 (so sets it to first character of file)
# if we used 4 instead of 0, would start at charcter 4, etc.
def rewind(f)
	f.seek(0, IO::SEEK_SET)
end

# defines a method print_a_line, with arguments line_count and f, and puts the line_cout and then the line in the terminal
def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end

# creates a variable current file, which opens the input_file
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

# prints the input file on the screen
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

# "rewinds" the input file by setting it to read from first character of file
rewind(current_file)

puts "Let's print three lines:"

# defines current line as 1, and prints 1 and line 1 of input_file
current_line = 1
print_a_line(current_line, current_file)

# defines current line as current line +1, and prints 2 and line 2 of input_file
current_line += 1
print_a_line(current_line, current_file)

# defines current line as current_line +1, and prints 3 and line 3 of input_file
current_line += 1
print_a_line(current_line, current_file)