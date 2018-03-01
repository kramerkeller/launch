# Question 4

# determine if an input string is an IP address
# that represents dot-seperated numbers

# Decided to use this to test
# def is_an_ip_number?(input_string)
#   (0..255).include?(input_string.to_i) # does not check for non-numeric input
# end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return (is_an_ip_number?(input_string)) if dot_separated_words.length == 4
  false
end

# true
puts dot_separated_ip_address?("10.4.5.1")

# all false
puts dot_separated_ip_address?("10.4.5.")

puts dot_separated_ip_address?("10.4.5")

puts dot_separated_ip_address?("10.4.5.1.555")

puts dot_separated_ip_address?("1.2.3.4.5")
