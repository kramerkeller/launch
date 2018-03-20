# Double Char (Part 2)

def double_consonants(string)
  new_str = ''
  string.each_char do |chr|
    new_str << chr if chr =~ /\A(?=[^aeiou])(?=[a-z])/i
    new_str << chr
  end
  new_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
