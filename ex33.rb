def create_my_array(x, y)
i = 0
numbers = []
  while i < x
	puts "At the top i is #{i}"
	numbers.push(i)

	i += y
	puts "Numbers now: #{numbers}"
	puts "At the bottom i is #{i}"
  end

  puts "The numbers: "
 
  for num in numbers
	puts num
  end
end

create_my_array(10, 2)


def create_my_other_array(x)
numbers = []
  for i in (0..x)
	puts "At the top i is #{i}"
	numbers.push(i)

	puts "Numbers now: #{numbers}"
	puts "At the bottom i is #{i}"
  end

  puts "The numbers: "
 
  for num in numbers
	puts num
  end
end

create_my_other_array(6)
