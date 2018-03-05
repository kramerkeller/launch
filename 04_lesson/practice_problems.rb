# Practice Problems

# problem 1
array = [1, 2, 3].select do |num|
  num > 5
  'hi'
end
p array
puts

# problem 2
array = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
p array
puts

# problem 3
array = [1, 2, 3].reject do |num|
  puts num
end
p array
puts

# problem 4
hash = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
p hash
puts

# problem 5
hash = { a: 'ant', b: 'bear' }
array = hash.shift
p hash
p array
puts

# problem 6
int = ['ant', 'bear', 'caterpillar'].pop.size
p int
puts

# problem 7
boolean = [1, 2, 3].any? do |num|
  puts num
  num.odd?
end
p boolean
puts

# problem 8
arr = [1, 2, 3, 4, 5]
return_arr = arr.take(2)
p return_arr
p arr
puts

# problem 9
return_arr = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
p return_arr
puts

# problem 10
new_array = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
p new_array
puts
