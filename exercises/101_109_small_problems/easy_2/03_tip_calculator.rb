# 03 Tip calculator

# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.
#
# Example:
#
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0

def tip (bill_amount, tip_rate)
  bill_amount * tip_rate
end

puts "Welcome to the tip calculator"

puts "How much is your bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
rate = gets.chomp.to_f

tip   = (bill * (rate / 100)).round(2)
total = (bill + tip).round(2)

tip = format('%#.2f', tip)
total = format('%#.2f', total)

puts "The tip is $#{tip}"
puts "The total is $#{total}"
