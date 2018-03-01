# Question 9

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# first most inner rps will return paper
puts rps("rock", "paper")

# second most inner rps will return rock
puts rps("rock", "scissors")

# New most inner rps is now rps(paper, rock) which returns paper
puts rps("paper", "rock")

# The final rps is now rps(paper, rock) which returns rock
puts rps("paper", "rock")

# Let's check
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
