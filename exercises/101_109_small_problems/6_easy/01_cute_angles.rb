# Create a method that takes a floating point number between 0 and 360 degrees
# The method should return a string that represents that angle in degrees,
# minutes, seconds.

# A degree has 60 minutes
# A minutes has 60 seconds

require 'pry'

def dms(floating_point_number)
  degrees = floating_point_number.floor
  remaining_floating_point = (floating_point_number - degrees)

  minutes = (remaining_floating_point * 60).floor
  remaining_floating_point = remaining_floating_point * 60 - minutes

  seconds = (remaining_floating_point * 60).floor
  remaining_floating_point = floating_point_number - seconds

  "#{degrees}\xC2\xB0#{minutes}'#{seconds}\""
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)

# floating_point_number
# 254.6

# Everything to the left of the floating_point_number is the same as degrees
  # degrees = float degrees
# The remainder (The part to the right of the decimal) needs to be divied into

# minutes and seconds
  # If we multiply the remainer by 60 then again, everytihg to the right of the
  # new floating point numbers is now the minutes
  # we then to the exact same as the above, but in seconds

# How do we find what is to the left only of an interger?
# floor is the best solutoin right?


# degrees
#{ }%(254°36'00")
