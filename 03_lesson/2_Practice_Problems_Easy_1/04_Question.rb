# Question 4

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
puts numbers

puts

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
puts numbers

# Both are destructive methods as expected with a name like delete.
# delete_at() deletes the value at the index number passed as a parameter
# delete() deletes all the values in the array matching the passed parameter
