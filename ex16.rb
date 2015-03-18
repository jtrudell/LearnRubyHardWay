#creates a variable file name, assigned to the first thing user types
#in the command line after running this program.
filename = ARGV.first

#puts the below stings to the console.
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do what that, hit RETURN."

#gets user input.
$stdin.gets

#puts the below string to the console, and creates a variable target, 
#which is assigned the open filename in write mode function.
#this opens the file filename and erases it, or creates
#a new file with that name if it didn't exist.
puts "Opening file..."
target = open(filename, 'w')

#puts the below string, and then erases the file filename. 
#This is unecessary, since we used 'w' with open above, which
#effectively does the same thing if filename already existed.
puts "Truncating the file. Goodbye!"
target.truncate(0)

#prints the below string.
puts "Now I'm going to ask you for three lines."

#prints the below strings and assigns variables line1, line2,
#and line3 to the user input.
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3= $stdin.gets.chomp

#puts the below string.
puts "I'm going to write these to the file."

#uses write method on variable target, which had opened the
#file filename, so it writes whatever the user entered for line1, line2
#and line3 to the file filename.
target.write("#{line1}\n" "#{line2}\n" "#{line3}\n")

#puts the below, closes target (which closes file filename).
puts "And finally, we close the file."
target.close

#puts the below string, creates a new variable target_again which 
#opens filename, calls read on target_again which prints file to console.
puts "And then open the file again to see what the revised file says."
target_again = File.open(filename)
puts target_again.read()

#puts the below string, closes the file.
puts "And close the file, again."
target_again.close