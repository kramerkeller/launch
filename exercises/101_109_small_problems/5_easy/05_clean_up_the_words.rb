# Clean up the words

# Given a string that consists of some words and an assortment of non-alphabetic
# characters, write a method that returns that string with all of the
# non-alphabetic characters replaced by spaces. If one or more non-alphabetic
# characters occur in a row, you should only have one space in the result (the
# result should never have consecutive spaces).

# Examples:
#
# cleanup("---what's my +*& line?") == ' what s my line '

ALPHABET = ('a'..'z').to_a

def cleanup(string)
  new_string = ''

  string.length.times do |i|
    if ALPHABET.include?(string[i])
      new_string += string[i]
    elsif ALPHABET.include?(string[i+1])
      new_string +=  " "
    end
  end

  new_string
end

p cleanup("---what's my +*& line?") # == ' what s my line '
