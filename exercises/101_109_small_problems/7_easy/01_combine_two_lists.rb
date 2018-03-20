# Combine Two Lists

def interleave(arr_1, arr_2)
  new_array = []
  arr_1.size.times do |i|
    new_array << arr_1[i] << arr_2[i]
  end
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
