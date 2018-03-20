# All Substrings

def substrings(str)
  new_str = ''
  arr = []
  str.each_char do |chr|
    new_str += chr
    arr << new_str
  end
  arr << substrings(str[1..str.size]) if str.size > 0
  arr.flatten
end

p substrings('abcde')
