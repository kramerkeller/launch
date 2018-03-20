# Multiply All Pairs

def multiply_all_pairs(arr_1, arr_2)
  products = []
  arr_1.each do |x|
    arr_2.each do |y|
      products << x * y
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
