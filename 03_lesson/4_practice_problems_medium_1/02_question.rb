# Question 2

# This will create and error, why?
# puts "the value of 40 + 2 is " + (40 + 2)
# It is trying to add a string to an interger

# One way to fix this:
puts 'the value of 40 + 2 is ' + (40 + 2).to_s

# Another way to fix this:
puts "the value of 40 + 2 is #{(40 + 2)}"
