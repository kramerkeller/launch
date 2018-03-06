# 02 Arithmetic Integer

# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers: addition,
# subtraction, product, quotient, remainder, and power. Do not worry about
# validating the input.

# Example
#
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

OPERATIONS = ['+', '-', '*', '/', '%', '**']

puts "==> Enter the first number:"
num_1 = gets.chomp

puts "==> Enter the second number:"
num_2 = gets.chomp

OPERATIONS.each do |operator|
  equation = "#{num_1} #{operator} #{num_2}"
  puts "==> #{equation} = #{eval(equation)}"
end
