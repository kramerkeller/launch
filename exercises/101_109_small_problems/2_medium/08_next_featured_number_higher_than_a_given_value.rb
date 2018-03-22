# Next Featured Number Higher than a Given Value

def featured(number)
  x = 7
  loop do
    x += 14
    digits = x.to_s.chars
    return x if x > number && x.digits.uniq.size ==  x.digits.size
    return 'No possible numbers fulfill those requirements.' if x >= 9876543210
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
