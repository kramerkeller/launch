# 09 Give us your feedback

# Sum of Digits
# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.
#
# Examples:
#
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.
#
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).
# puts average([9, 47, 23, 95, 16, 52]) == 40

def sum(num)
  num.to_s.split('').map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
