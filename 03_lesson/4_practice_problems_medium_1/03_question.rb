# Question 3

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

# Tests
p factors(1000000)
puts

p factors(0)
puts

p factors(-25)
puts

p factors(12)
puts

# Bonus 1
# (number % dividend == 0) is only true when here is no remainder so we know
# it is divisible by that number

# Bonus 2
# The last line simple returns the divisors
