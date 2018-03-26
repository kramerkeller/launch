# Egyptian Fractions

def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

# # 1st iteration:
# unit_denominator = 1
# target_value = 2/1
# unit_fraction = 1/1
# false target_value == 0
#   true unit_fraction <= target_value
#     target_value = 1
#     denominators[1]
#   unit_denominator = 2
#
# # 2nd iteration:
# false target_value == 0
#   unit_fraction = 1/2
#   true unit_fraction <= target_value
#     target_value = 1 - (1/2) = 1/2
#     denominators[1,2]
#   unit_denominator = 3
#
# # 3rd iteration:
# false target_value == 0
#   unit_fraction = 1/3
#   true unit_fraction <= target_value
#     target_value = 1/2 - 1/3 = 1/6
#     denominators[1,2,3]
#   unit_denominator = 4
#
# # 4th iteration:
# false target_value == 0
#   unit_fraction = 1/4
#   false unit_fraction <= target_value
#   unit_denominator = 5
#
# # 5th iteration:
# unit_fraction = 1/5
#   false unit_fraction <= target_value
#   unit_denominator = 6
#
# # 6th iteration
# false target_value == 0
#   unit_fraction = 1/6
#   true unit_fraction <= target_value
#     target_value = 1/6 - 1/6 = 0
#     denominators[1,2,3,6]
#   unit_denominator = 7
#
# # 7th iteration
# true target_value == 0
# STOP
