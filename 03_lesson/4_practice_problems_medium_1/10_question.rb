# Question 10

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)

# Answer is no
# foo returns yes (always)
# bar param will then be equal to yes, so yes == no is false so we get no
