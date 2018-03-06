# 01 Searching 101

# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.

# Examples:
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
#
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

numbers = []

6.times do |i|
  case i
  when 0 then puts '==> Enter the 1st number:'
  when 1 then puts '==> Enter the 2nd number:'
  when 2 then puts '==> Enter the 3rd number:'
  when 3 then puts '==> Enter the 4th number:'
  when 4 then puts '==> Enter the 5th number:'
  else
    puts '==> Enter the last number:'
  end
  numbers[i] = gets.chomp
end

num = numbers.pop
if numbers.include?(num)
  puts "The number #{num} appears in #{numbers}"
else
  puts "The number #{num} does not appear in #{numbers}"
end
