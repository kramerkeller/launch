# Double Char (Part 1)

def repeater(string)
  (0..(string.size * 2 - 1)).step(2) do |i|
    string.insert(i, string[i])
  end
  string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
