# frozen_string_literal: true

# 3 fibonacci numbers from 1 to 100

fibonacci = []
count = 1

def fib(number)
  number <= 1 ? number : fib(number - 1) + fib(number - 2)
end

while fib(count) < 101
  num = fib(count)
  count += 1
  fibonacci << num
end
puts fibonacci