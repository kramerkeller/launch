# Multiplicative Average

def show_multiplicative_average(arr)
  result = 1.000
  arr.each { |e| result *= e }
  format('%.3f', (result / arr.size).round(3))
end

puts show_multiplicative_average([3, 5])
puts show_multiplicative_average([6])
puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
