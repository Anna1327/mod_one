numbers = []
range = (10..100)
range.each { |number| numbers.push(number) if (number % 5).zero? }
puts numbers
