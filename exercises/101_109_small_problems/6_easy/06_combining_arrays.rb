def merge(arr_1, arr_2)
  arr_1 | arr_2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
