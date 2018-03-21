# Word to Digit

NUMS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven',
           'eight', 'nine']

def word_to_digit(words)
  words = words.split.map do |word|
    clean = word.gsub(/\W+/, '')
    NUMS.include?(clean) ? word.gsub(clean, NUMS.find_index(clean).to_s) : word
  end
  words.join(' ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.')
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
