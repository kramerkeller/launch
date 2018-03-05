# Methods

boolean = [1, 2, 3].any? do |num|
  num > 2
end
p boolean
puts

hash = { a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end

p hash
puts

boolean =  [1, 2, 3].all? do |num|
  num > 2
end
p boolean
puts

boolean = { a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end
p boolean
puts

[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
puts

{ a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end
puts

array = [1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end
p array
puts

hash = { a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
p hash
puts

boolean = [1, 2, 3].include?(1)
p boolean
puts

array = [1, 2, 3].partition do |num|
  num.odd?
end
p array
puts

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end
p odd
p even
puts

long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end

p long
p short
puts

p long.to_h
p short.to_h
puts
