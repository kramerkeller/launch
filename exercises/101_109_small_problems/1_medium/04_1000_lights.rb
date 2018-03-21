# 1000 Lights

# initialize n switches to off
# toggle every switch
# toggle ever other switch
# toggle every third switch

def toggle_lights(rounds)
  switches = [false] * rounds
  1.upto(rounds) do |round|
    switches = switches.map.with_index(1) { |e, i| i % round == 0 ? !e : e }
    print "Round #{round}: "
    puts switches.map{ |status| status ? "on" : "off"}.join(" ")
  end
end

toggle_lights(5)
