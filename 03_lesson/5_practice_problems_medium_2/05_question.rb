# Question 5

def color_valid_1(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end


def color_valid_2(color)
  color == "blue" || color == "green"
end

puts "color_valid_1"
puts color_valid_1("green")
puts color_valid_1("red")
puts color_valid_1("blue")
puts color_valid_1("true")
puts
puts "color_valid_2"
puts color_valid_2("green")
puts color_valid_2("red")
puts color_valid_2("blue")
puts color_valid_2("true")
