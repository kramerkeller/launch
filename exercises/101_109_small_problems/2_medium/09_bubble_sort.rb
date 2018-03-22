# Bubble Sort

# start with the first number
# if the first number < second number, don't exchange
# if the first numebr > second number, exchange

def bubble_sort!(a)
  n = a.size - 1
  n.times { n.times { |i| a[i], a[i + 1] = a[i + 1], a[i] if a[i] > a[i + 1] } }
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
