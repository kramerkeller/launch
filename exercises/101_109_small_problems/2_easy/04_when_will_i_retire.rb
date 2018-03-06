# 04 When will I Retire?

# Build a program that displays when the user will retire and how many years she
# has to work till retirement.
#
# Example:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

current_year = Time.now.year
retire_time = retire_age - age
retire_year = current_year + retire_time

puts "It's #{current_year}. You will retire in #{retire_year}"
puts "You only have #{retire_time} years of work to go!"
