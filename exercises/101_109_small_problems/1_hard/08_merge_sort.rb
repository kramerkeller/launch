# Merge Sort

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

def merge_sort(array)
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
