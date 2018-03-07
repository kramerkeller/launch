# 09 Convert a Number to a String!

# In the previous two exercises, you developed methods that convert simple
# numeric strings to signed Integers. In this exercise and the next, you're
# going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
# old-fashioned way and construct the string by analyzing and manipulating the
# number.

# Examples
#
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# def integer_to_string(int)
#   convert = %w(0 1 2 3 4 5 6 7 8 9)
#   string = ''
#   loop do
#     digit = int % 10
#     int = int / 10
#     string += convert[digit]
#     return string.reverse if int == 0
#   end
# end

# not sure if this one below is cheating or not, but if not I have the above

def integer_to_string(int)
  convert = %w(0 1 2 3 4 5 6 7 8 9)
  string = ''
  int.digits.each { |digit| string += convert[digit] }
  string.reverse
end

p integer_to_string(4321)
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
