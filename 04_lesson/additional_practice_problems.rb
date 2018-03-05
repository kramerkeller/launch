# Practice Problems

# # problem 1
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#
# hash = {}
# flintstones.map.with_index do |v, i|
#   hash[v] = i
# end
# flintstones = hash
#
# puts flintstones

# # problem 2
# family = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# ages = family.values
#
# age_sum = 0
# ages.each { |age| age_sum += age }
#
# puts age_sum

# # problem 3
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#
# yougins = ages.select { |_, age| v < 100 }
# p yougins

# # problem 4
#
# Look at all the values only, compare and return smallest
#
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.min

# # problem 5
#
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#
# p flintstones.index { |name| name.include? "Be" }
#
# # hmmm... I guess they did say "starts with"
# p flintstones.index { |name| name[0, 2] == "Be" }

# Problem 6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#
# flintstones_short = flintstones.map do |name|
#   name[0,3]
# end
#
# p flintstones
# p flintstones_short
#
# flintstones.concat(flintstones_short)
# p flintstones

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#
# flintstones.map! do |name|
#   name[0,3]
# end
#
# p flintstones

# What does "ammend this array mean" doesn't that mean update the existing
# array... ammending it... when do we do a ne array vs original... this to me
# doesn't ammend "it" but overwrites it... hmmm

# Problem 7

statement = "The Flintstones Rock"
sorted = statement.chars.sort
sorted.delete(' ')
letter_count = {}

sorted.each do |char|
  letter_count.key?(char) ? letter_count[char] += 1 : letter_count[char] = 1
end

p letter_count

# Problem 8

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# 1, 3 because numbers will drop down an index while going through

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1, 2 because numbers will be removed from the end halfway through

# Problem 9

def my_titleize(words)
  words.split.map { |word| word.capitalize! }.join(' ')
end

words = "the flintstones rock"
words_capped = my_titleize(words)
p words_capped

# Problem 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k, v|
  case v["age"]
  when 0..17
    v['age_group'] = 'kid'
  when 18..64
    v['age_group'] = 'adult'
  else
    v['age_group'] = 'senior'
  end
end

puts munsters
