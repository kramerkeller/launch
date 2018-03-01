# Question 6

famous_words = "seven years ago..."

puts "Four score and " + famous_words

puts "Four score and #{famous_words}"

# and this one
puts "Four score and " << famous_words

# but... I don't really use this one because in some scenarios it mutates
# so unless I intentinoally wanted to do that, I'd use the above

puts famous_words

puts famous_words << "Four score and "

puts famous_words
