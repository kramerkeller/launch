# Question 8

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

puts mess_with_demographics(munsters)
puts
puts munsters

# screws it up because ruby passed object id in param
# family_member["age"] = is destructive
# family_member["gender"] = is also destructive


var = 8

def another_test(some_var)
  some_var += 10
end

another_test(var)

puts var

# Not destructive
