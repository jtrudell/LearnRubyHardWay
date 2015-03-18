#this declares a variable called "filename", and it assigns it
#to the ARGV.first, which is the first thing that is typed in the
#console after you type the name of this program.
filename = ARGV.first

#this declares a variable called "prompt" and assigns it a value of >.
prompt = "> "

#this declares a variable called "txt" and assigns it to File.open(filename). File.open calls the open method on File, and tells it to open
#the value assigned to filename (which in this case is ARGV.first).
txt = File.open(filename)

#this prints the below string, inserting the value assigned to filename.
puts "Here's your file: #{filename}."

#this prints the variable txt, which has called the method read, which
#means that everything in the file filename (which txt has opened) will #be printed onto the screen.
puts txt.read()

#calls method closed on txt, which closes the file that txt opened above
txt.close()

#prints the below string.
puts "I'll also ask you to type it again:"

#prints >.
print prompt

#declares a variable called "file_again" which gets assigned to
#whatever the user inputs.
file_again = STDIN.gets.chomp()

#declares a variable called "txt_again" which gets the File.open method,
#and opens the file assigned to file_again (i.e., the file the user #entered above).
txt_again = File.open(file_again)

#prints the contents of the file called by the variable txt_again 
#(which is the open file file_again) 
puts txt_again.read()

#calls method close on txt_again, which closes the file that txt_again
#opened above.
txt_again.close()
