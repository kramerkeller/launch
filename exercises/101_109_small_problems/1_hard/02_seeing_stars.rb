# Seeing Stars

# middle, just print he number of stars
# above and below
  # middle 3 stars
  # middle 3 stars joined by 1 space between
  # middle 3 stars joined by 2 spaces between
  # etc
# can we just center shit... instead of adding spaces

def star(num)
  stars = ['*','*','*']
  center = (num / 2) - 1
  lines = []

  # create array with mirrored lines using unshift and push
  0.upto(center) do |i|
    spaces = ' ' * i
    offset = ' ' * (center - i)
    lines.unshift(offset + stars.join(spaces))
    lines.push(offset + stars.join(spaces))
  end

  # insert middle line of stars at middle of array
  lines.insert( num/2, ('*' * num).split.join)
end

system 'clear'
puts star(7)
puts star(9)
puts star(11)
puts star(13)
