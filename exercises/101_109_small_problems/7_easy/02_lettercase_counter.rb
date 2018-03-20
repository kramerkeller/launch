# Lettercase Counter

def letter_case_count(string)
  upcase_count = 0
  lowcase_count = 0
  nocase_count = 0

  string.each_char do |chr|
    upcase_count += 1 if /[[:upper:]]/.match(chr)
    lowcase_count += 1 if /[[:lower:]]/.match(chr)
    nocase_count = string.length - upcase_count - lowcase_count
  end

  { lowercase: lowcase_count, uppercase: upcase_count, neither: nocase_count }
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
