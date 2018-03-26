# Merge Sorted Lists

require 'pry'

def merge(arr_1, arr_2)
  array = []
  x = 0
  y = 0
  z = arr_1.size + arr_2.size

  z.times do
    #binding.pry
    if x == arr_1.size
      array << arr_2[y]
      y += 1
    elsif y == arr_2.size
      array << arr_1[x]
      x += 1
    elsif arr_1[x] == arr_2[y]
      array << arr_1[x] << arr_2[y]
      x += 1
      y += 1
    elsif arr_1[x] < arr_2[y]
      array << arr_1[x]
      x += 1
    else
      array << arr_2[y]
      y += 1
    end
  end
  array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
