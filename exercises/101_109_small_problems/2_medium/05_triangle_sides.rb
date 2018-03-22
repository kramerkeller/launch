# Triangle Sides

def triangle(x, y, z)
  sides = [x, y, z].sort
  return :invalid if sides[0] + sides[1] <= sides[2]
  unique_count = sides.uniq.size
  case unique_count
  when 1 then :equilateral
  when 2 then :isosceles
  when 3 then :scalene
  end
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid
