# fizzbuzz

def fizzbuzz(start, finish)
  (start..finish).map do |num|
    if  num % 3 == 0 || num % 5 == 0
      print 'Fizz' if num % 3 == 0
      print 'Buzz' if num % 5 == 0
    else
      print num
    end
    print ', ' unless num == finish
  end
end

puts
fizzbuzz(1, 15)
puts
puts
