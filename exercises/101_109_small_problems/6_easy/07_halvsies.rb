# halvsies

def halvsies(arr)
  middle = arr.length / 2 - 1
  middle += 1 if arr.length.odd?

  arr_1 = arr[0..middle]
  arr_2 = arr[(middle+1)..arr.length]

  [arr_1, arr_2]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
