# Palindromic Substrings

def palindrome?(string)
  string == string.reverse && string.length > 1
end

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

def palindromes(string)
  substrings(string).select do |str|
    str if palindrome?(str)
  end
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
