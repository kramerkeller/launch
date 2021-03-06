# 06 Running Totals

# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# Examples:
#
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# def running_total(arr)
#   new_arr = [arr[0]]
#   1.upto(arr.length-1) do |i|
#     new_arr[i] = new_arr[i-1] + arr[i]
#   end
#   new_arr
# end

# def running_total(arr)
#   arr.map.with_index { |num, i| i == 0 ? num : num + arr[i - 1] }
# end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end


p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []
