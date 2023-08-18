prev_value = 0
last_value = prev_value + 1
fibonacci = [prev_value, last_value]
loop do 
  number = prev_value + last_value
  break if number > 100

  fibonacci.push(number)
  prev_value = last_value
  last_value = number
end
puts fibonacci