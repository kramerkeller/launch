# Question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.include?("Spot")

# Other ways
puts ages.key?("Spot")
puts ages.has_key?("Spot")

puts

puts ages.include?("Herman")

# Other ways
puts ages.key?("Herman")
puts ages.has_key?("Herman")

# Launch School also says

puts

puts ages.member?("Spot")
puts ages.member?("Herman")
