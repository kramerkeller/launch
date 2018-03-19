def reverse!(array)
  (array.size/2).times do |i|    # 4/2 = 2       # i = 0,        i = 1
    swap = array[i]              # swap = a      swamp = b
    array[i] = array[-(i+1)]     # [d, b, c, d]  [d, c, c, d]
    array[-(i+1)] = swap         # [d, b, c, a]  [d, c, b, d]
  end
  array
end

p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

p list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) # => []
p list == []
