# Multiply Lists

def multiply_list(arr_1, arr_2)
  product = []
  arr_1.each_with_index do |x, i|
    product[i] = x * arr_2[i]
  end
  product
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
