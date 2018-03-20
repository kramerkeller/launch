# Sum of Sums

def sum_of_sums(arr)
  arr.size > 1 ? arr.sum + sum_of_sums(arr.take(arr.size - 1)) : arr[0]
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p  sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
