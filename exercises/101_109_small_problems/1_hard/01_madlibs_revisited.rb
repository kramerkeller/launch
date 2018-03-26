# Madlibs Revisited

# So we need a list of nouns, verbs, adjectives, and adverbs that we can
# randomly select/sampe

# So as I go through a sentence I will need to grab a random noun, adverb, etc
# I'm thinking hash with key of each word type and value of array with words

# EXAMPLE TXT
# The adjective adjective noun adverb verb the adjective adjective noun, who
# adverb verb his noun and verb noun.

nouns = %w(dog cat mouse)
verbs = %w(invents whispers scares bangs turns boasts launches deceives forces)
adjectives = %w(mammoth giant spotty boundless thoughtful barbarous dizzy)
adverbs = %w(sweetly unbearably sedately scarcely roughly anyway frankly)

words = {'noun' => nouns, 'verb' => verbs, 'adjective' => adjectives,
         'adverb' => adverbs }

madlib = File.read('madlib.txt').split

madlib.map! do |word|
  clean_word = word.gsub(/[[:punct:]]/, '')
  if words.key?(clean_word)
    random_word = words[clean_word].sample
    mad_word = word.gsub(clean_word, random_word)
  else
    word
  end
end

system 'clear'
puts
puts madlib.join(' ')
puts
