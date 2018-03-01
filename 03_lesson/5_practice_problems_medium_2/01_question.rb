# Question 1

 def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n"

  # A numbered id such as `id1`, `id2`, etc each represents a unique id block

  # Output should be...
  # a_outer is 42 with an id of: `id1` before the block.
  # b_outer is forty two with an id of: `id2` before the block.
  # c_outer is [42] with an id of: `id3` before the block.
  # d_outer is 42 with an id of: `id1` before the block.

  1.times do
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block.\n\n"

    # Output should be...
    # a_outer id was `id1` before the block and is: `id1` inside the block.
    # b_outer id was `id2` before the block and is: `id2` inside the block.
    # c_outer id was `id3` before the block and is: `id3` inside the block.
    # d_outer id was `id1` before the block and is: `id1` inside the block.

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n"

    # Output should be...
    # a_outer inside after reassignment is 22 with an id of: `id1` before and: `id4` after.
    # b_outer inside after reassignment is thirty three with an id of: `id2` before and: `id5` after.
    # c_outer inside after reassignment is [44] with an id of: `id3` before and: `id6` after.
    # d_outer inside after reassignment is 44 with an id of: `id1` before and: `id7` after.

    a_inner = a_outer
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer).\n\n"

    # Output should be...
    # a_inner is 22 with an id of: `id4` inside the block (compared to `id4` for outer).
    # b_inner is thirty three with an id of: `id5` inside the block (compared to `id5` for outer).
    # c_inner is [44] with an id of: `id6` inside the block (compared to `id6` for outer).
    # d_inner is 44 with an id of: `id7` inside the block (compared to `id7` for outer).
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block.\n\n"

  # a_outer is 22 with an id of: `id1` BEFORE and: `id4` AFTER the block.
  # b_outer is thirty three with an id of: `id2` BEFORE and: `id5` AFTER the block.
  # c_outer is [44] with an id of: `id3` BEFORE and: `id6` AFTER the block.
  # d_outer is 44 with an id of: `id1` BEFORE and: `id7` AFTER the block.


  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue puts "ugh ohhhhh"

  # All the inner's are going to be errors because they only exised in the loop
end

fun_with_ids

# Check my work
# Looks right
# id1 = 85
# id2 = 70231205357400
# id3 = 70231205357600
# id4 = 45
# id5 = 70231205363300
# id6 = 70231205363420
# id7 = 89
