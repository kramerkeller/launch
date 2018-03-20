# Leading Substrings

def substrings_at_start(str)
  new_str = ''
  arr = []
  str.each_char do |chr|
    new_str += chr
    arr << new_str
  end
  arr
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
