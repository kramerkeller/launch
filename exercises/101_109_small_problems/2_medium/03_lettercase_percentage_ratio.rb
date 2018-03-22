# Lettercase Percentage Ratio

# if string letter
  # if upcase upcase += 1
  # if downcase += 1
# else
  #non-letter += 1
# then simply divide out from work total for percentage (map)

def letter_percentages(string)
  low, up, non = [0, 0, 0]

  string.each_char do |chr|
    case chr
    when /[a-z]/ then low += 1
    when /[A-Z]/ then up += 1
    else non += 1
    end
  end

  convert = 100 / string.size.to_f
  low *= convert
  up *= convert
  non *= convert

  percentages = { lowercase: low, uppercase: up, neither: non}
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
