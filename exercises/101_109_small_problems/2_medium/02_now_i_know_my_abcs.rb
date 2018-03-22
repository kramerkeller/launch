# Now I Know My ABCs

def block_word?(word)
  stack = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  word.each_char do |chr|
    stack.delete_if { |block| block.include?(chr.upcase) }
  end
  (13 -stack.size) == word.size
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
