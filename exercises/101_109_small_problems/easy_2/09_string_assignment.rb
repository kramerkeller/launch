# 09 String Assignment

# Take a look at the following code:
#
# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name
# What does this code print out? Think about it for a moment before continuing.
#
# If you said that code printed
#
# Alice
# Bob
# you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:
#
# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name
# What does this print out? Can you explain these results?

# The output will be
BOB
BOB

# looking at pointers where '->' shows what the variable is pointing to in memory

# Variable    # Some location in memory
name      ->  Bob # is at location x
save_name ->  Bob # is also at location x

# Bob is now BOB because we did a destructive change with name.upcase!
# This means we changed the actual thing being pointed to
# So when we said name.upcase! that meant we went to memory location x and
# and changed its value to BOB.

# Variable    # Some location in memory
name      ->  BOB # is still at location x
save_name ->  BOB # is also still at location x
