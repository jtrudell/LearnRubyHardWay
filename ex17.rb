#this creats two variables, from_file and to_file, and assigns
#the first and second things, respectively, typed after you
#run the program in the command line to them
from_file, to_file = ARGV

#this assigns a variable named scripted to $0, which is just a
#standin for the name of the file (ex17.rb)
script = $0

puts "This is the #{script} program and it will copy from #{from_file} to #{to_file}"

#this creates a variable input and assigns it to open
#from_file and then read it
input = File.open(from_file).read

puts "The input file is #{input.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

#this creates a variable output and assigns it to open to_file
#in write mode
output = File.open(to_file, 'w')
#this writes input (which is the from_file) to output (to_file)
output.write(input)

puts "Alright, all done."

output.close()