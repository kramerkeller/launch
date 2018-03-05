# 02 Odd

# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method return true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value.

# Examples:
#
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

def is_odd?(integer)
  integer % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# The Integer#remainder method performs a remainder operation in Ruby. Rewrite
# is_odd? to use Integer#remainder instead of %. Note: before version 2.4, Ruby
# used the Numeric#remainder method instead.

def is_odd?(integer)
  integer.abs.remainder
end
