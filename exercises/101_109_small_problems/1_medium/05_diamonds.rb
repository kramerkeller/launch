# Diamonds!

def diamond(size)
  lines = []
  (1..size).step(2) do |stars|
    lines << (' ' * ((size - stars) / 2)) + ('*' * stars)
  end
  lines += lines[0, size/2].reverse
end

# diamond(1)
puts diamond(1)
puts
puts diamond(5)
puts
puts diamond(9)
