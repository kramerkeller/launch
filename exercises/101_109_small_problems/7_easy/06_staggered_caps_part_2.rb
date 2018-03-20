# Staggered Caps (Part 2)

def staggered_case(string)
  new_string = ''
  stagger = true
  string.size.times do |i|
    if (string[i] =~ /[[:alpha:]]/) == 0
      new_string += stagger ? string[i].upcase : string[i].downcase
      stagger = !stagger
    else
      new_string += string[i]
    end
  end
  new_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
