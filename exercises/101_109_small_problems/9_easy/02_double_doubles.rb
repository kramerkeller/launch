# Double Doubles

# def twice num
#   num_str = num.to_s
#   num_size = num_str.size
#   center = num_size / 2
#   return num if num_size.even? && num_str[0, center] == num_str[center, num_size]
#   num * 2
# end

def twice num
  num_size = num.to_s.size
  return num * 2 if num_size.odd?
  center = num_size / 2
  left = num.to_s[0, center]
  right = num.to_s[center, num_size]
  left == right ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
