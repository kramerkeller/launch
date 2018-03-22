# Matching Parentheses?

def balanced?(string)
  # representing open and closed parentheses
  open_count = close_count = 0

  # As we iterate, close_count should never exceed open_count
  string.each_char do |chr|
    open_count += 1 if chr == '('
    close_count += 1 if chr == ')'
    break if close_count > open_count
  end

  open_count == close_count
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
