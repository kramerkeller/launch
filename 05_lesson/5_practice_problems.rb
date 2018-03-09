# Practice Problems: Sorting, Nested Collections and Working with Blocks

# problem 1
arr = ['10', '11', '9', '7', '8']

p arr.sort { |x,y| y.to_i <=> x.to_i }
puts

# problem 2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort_by { |book| book[:published] }
puts

# problem 3
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr3 = [['abc'], ['def'], {third: ['ghi']}]
hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

puts arr1[-1][-1][-1]
puts arr2[-1][:third][0]
puts arr3[-1][:third][0][0]
puts hsh1['b'][-1]
puts hsh2[:third].key(0)
puts

# problem 4
arr1 = [1, [2, 3], 4]
arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
hsh1 = {first: [1, 2, [3]]}
hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

arr1[1][1] = 4
arr2[-1] = 4
hsh1[:first][-1][-1] = 4
hsh2[['a']][:a][-1] = 4

p arr1
p arr2
p hsh1
p hsh2
puts

# problem 5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# From this hash we want the ages of every male

sum = 0
munsters.each do |munster, info|
  sum += info['age'] if info['gender']
end

puts sum
puts

# problem 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, deets|
  puts "#{name} is a #{deets['age']}-year-old #{deets['gender']}"
end

puts

# problem 7
a = 2
b = [5, 8]
arr = [a, b] #= [2, [5,8]]

arr[0] += 2
# This modifies arr[0] from a to 4
# arr[0] = arr[0] + 2
# arr[0] = 2      + 2
# arr[0] = 4

arr[1][0] -= a
# arr[1][0] = arr[1][0] - a
# arr[1][0] = 5         - 2
# arr[1][0] = 3

p arr
# [4, [3,8]]
puts

# problem 8
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
      fourth: ['over', 'the', 'lazy', 'dog']}

# flatten the hash
# select out all strings to new array
#

hsh.flatten(2).each do |e|
  if e == e.to_s
    e.chars.each do |letter|
      puts letter if "aeiouAEIOU".include?(letter)
    end
  end
end

puts

# problem 9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_array = arr.map do |arr|
  arr.sort { |a, b| b<=> a}
end

p new_array
puts

# problem 10
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
  hash.transform_values {|v| v + 1 }
end

p new_arr
puts

# Practice Problem 11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |array|
  array.select do |number|
    number % 3 == 0
  end
end

p new_arr
puts

# Practice Problem 12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = {}
arr.each do |sub_array|
  hash[sub_array[0]] =  sub_array[1]
end
p hash
puts

# Practice Problem 13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new_arr = arr.sort_by do |e|
  e.select do |num|
    num.odd?
  end
end

p new_arr
puts

# Practice Problem 14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = hsh.map do |_, info|
  if info[:type] == 'fruit'
    info[:colors].map do |color|
      color.capitalize
    end
  else
    info[:size].upcase
  end
end

p new_arr
puts

# Practice Problem 15
arr = [
  {a: [1, 2, 3]},
  {b: [2, 4, 6], c: [3, 6], d: [4]},
  {e: [8], f: [6, 10]}
  ]

new_array = arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p new_array
puts

# Practice Problem 16
# create 32 random hexidecimal characters

require 'securerandom'
p SecureRandom.uuid

def uuid
  uuid = ''
  dash = [7,11,15,19]
  hex = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

  32.times do |i|
    uuid += hex[rand(16)] #could do hex.sample too i guess :)
    if i == dash[0]
      uuid += '-'
      dash.shift
    end
  end

  uuid
end

p uuid
