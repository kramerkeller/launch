# Right Triangles

def triangle(num)
  1.upto(num) { |i| puts "#{' ' * (num-i)} #{'*' * i}" }
end

triangle(5)
triangle(9)
triangle(20)
