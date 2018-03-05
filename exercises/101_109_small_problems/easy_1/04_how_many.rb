# 04 How Many?

# Write a method that counts the number of occurrences of each element in a
# given array.
#
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
# 'motorcycle', 'car', 'truck']
#
# count_occurrences(vehicles)
#
# Once counted, print each element alongside the number of occurrences.
#
# Expected output:
#
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(vehicles)
  vehicles.uniq.each do |vehicle|
    puts "#{vehicle} => #{vehicles.count(vehicle)}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
            'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
