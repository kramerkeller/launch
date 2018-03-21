# Rotation (Part 3)

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(digits, num)
  arr = digits.to_s.chars
  arr += rotate_array(arr.pop(num))
  arr.join.to_i
end

def max_rotation(number)
  rotate = number.to_s.size
  rotate.downto(1) do |i|
    number = rotate_rightmost_digits(number, i)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
