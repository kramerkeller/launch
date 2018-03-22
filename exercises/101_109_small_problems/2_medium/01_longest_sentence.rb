# Longest Sentence
# Load the file into a string
# Create array of sentences
  # a sentence is anything that ends with the following: "." "!" "?"
# check the length of sentences

#text = File.read('sample_text.txt')
text = File.read('pg84.txt')
sentences = text.split(/[[.!?]]/)
largest = ''
sentences.each do |sentence|
  largest = sentence if sentence.split.size > largest.split.size
end

puts largest
puts largest.split.size
