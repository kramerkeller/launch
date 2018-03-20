# Grocery List

def buy_fruit(list)
  new_arr = []
  list.each do |arr|
    arr[1].times { new_arr << arr[0] }
  end
  new_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
