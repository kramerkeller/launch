# def fibonacci
#   first_num = 1
#   second_num = 1
#   third_num = 0
#
#   5.times do
#     third_num = first_num + second_num
#     first_num = second_num
#     second_num = third_num
#     puts third_num
#   end
# end
#
# fibonacci

# Go through the fibonacci sequence and check each numbers digit size.
# Stop once the digit size ewuals the digit size specified by user

require 'pry'

def find_fibonacci_index_by_length(digits)
  first_num = 1
  second_num = 1
  third_num = 0
  index = 2

  while third_num.to_s.length < (digits)
    third_num = first_num + second_num
    first_num = second_num
    second_num = third_num
    index += 1
  end

  index
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
