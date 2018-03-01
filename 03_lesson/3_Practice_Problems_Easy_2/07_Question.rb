# Question 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
flintstones << "Hoppy"
p flintstones

puts

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino').push('hoppy')
p flintstones

puts

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(['Dino', 'Hoppy'])
p flintstones

puts

# Launch Answer to last one better
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
p flintstones
