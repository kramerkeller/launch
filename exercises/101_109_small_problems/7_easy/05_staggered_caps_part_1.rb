# Staggered Caps (Part 1)

def staggered_case(string)
  new_string = ''
  string.size.times do |i|
    new_string += i.even? ? string[i].upcase : string[i].downcase
  end
  new_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
