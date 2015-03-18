# this creates a variable called cars which equals 100
cars = 100

# this creates a variable called space_in_a_car which equals 4.0
space_in_a_car = 4.0

# this creates a variable called drivers which equals 30
drivers = 30

# this creates a variable called passengers which equals 90
passengers = 90.0

# this creates a variable called cars_not_driven which is equal to the variable cars minus the variable drivers
cars_not_driven = cars - drivers

# this creates a variable called cars_driven which is equal to the variable drivers
cars_driven = drivers

# this creates a variable called carpool_capacity which is equal to the variable cars_driven times the variable space_in_a_car
carpool_capacity = cars_driven * space_in_a_car

# this crease a variable called average_passengers_per_car which is equal to the variable passengers divided by the variable cars_driven
average_passengers_per_car = passengers / cars_driven

# this crease a variable called imaginary_passengers_per_car which is equal to the variable passengers divided by cars
imaginary_passengers_per_car = passengers / cars

#this creates a variable called extra_drivers which is equal to cars_not_driven
extra_drivers = cars_not_driven

#this creates a variable for the name Isaac
cool_guy = "Isaac"

# this puts text the says "There are 100 cars available."
puts "There are #{cars} cars available."

# this puts text that says "There are only 30 drivers available."
puts "There are only #{drivers} drivers available."

# this puts text that says "There will be 70 empty cars."
puts "There will be #{cars_not_driven} empty cars today."

# this puts text that says "We can transport 120 people today."
puts "We can transport #{carpool_capacity} people today."

# this puts text that says "We have 90 passengers to carpool today."
puts "We have #{passengers} passengers to carpool today."

# this puts texts that says "We need to put about 3 in each car."
puts "We need to put about #{average_passengers_per_car} in each car."

# this puts text that says "We could have .90 passengers in each car if we had 70 more drivers."
puts "We could have #{imaginary_passengers_per_car} passengers in each car if we had #{extra_drivers} more drivers."

# this puts text that is not true, because Isaac is an excellent driver
puts "But if %s is the driver, we really should just blow up all of the #{cars} cars to save the #{passengers} passengers" % cool_guy
