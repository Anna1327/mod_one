# frozen_string_literal: true

# 2 fill the array with numbers from 10 to 100 with a step of 5

numbers = []
range = (10..100)
range.each { |number| numbers.push(number) if (number % 5).zero? }
puts numbers
