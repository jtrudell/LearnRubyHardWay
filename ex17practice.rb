input_file, output_file = ARGV
from_file = File.open(input_file).read
to_file = File.open(output_file, 'w')
to_file.write(from_file)
to_file.close()