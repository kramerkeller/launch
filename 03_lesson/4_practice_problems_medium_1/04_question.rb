# Question 4

# This method will mutate the original buffer array passed in. It's destructive
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# This method will is not destructive to the parameter passed in.
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

train1 = %w('car1 car2 car3 car4 car5)
train2 = %w('car1 car2 car3 car4 car5)

puts "Rolling buffer1 and Train 1"
p rolling_buffer1(train1, 5,"car6")
p train1

puts "Rolling buffer2 and Train 2"
p train2
p rolling_buffer2(train2, 5,"car6")
