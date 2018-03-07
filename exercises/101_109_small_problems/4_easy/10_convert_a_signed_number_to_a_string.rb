# 10 Convert a Signed Number to a String!
# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.

# Examples
#
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

def integer_to_string(int)
  convert = %w(0 1 2 3 4 5 6 7 8 9)
  string = ''
  int.digits.each { |digit| string += convert[digit] }
  string.reverse
end

# def signed_integer_to_string(int)
#   str = integer_to_string(int.abs)
#   return('-' + str) if int.negative?
#   return('+' + str) if int.positive?
#   str
# end

# def signed_integer_to_string(int)
#   str = integer_to_string(int.abs)
#   return '0' if int == 0
#   int > 0 ? (return('+' + str)) : (return('-' + str))
# end

def signed_integer_to_string(int)
  return '0' if int == 0
  int > 0 ? sign = '+' : sign = '-'
  sign + integer_to_string(int.abs)
end

p signed_integer_to_string(4321)
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
