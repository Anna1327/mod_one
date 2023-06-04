puts "What's your name?"
name = gets.chomp
puts "What's your height?"
height = gets.chomp.to_i
ideal_weight = (height - 110.0) * 1.15
puts "What's your real weight now?"
real_weight = gets.chomp.to_i

if (real_weight - ideal_weight).negative?
  puts "Your ideal weight is already optimal"
else
  puts "#{name}, your ideal weight is #{ideal_weight}"
end