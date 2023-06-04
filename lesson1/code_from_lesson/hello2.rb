puts "What's your name"
name = gets.chomp
puts "In what year were you born?"
year_of_born = gets.chomp.to_i
years_old = 2023 - year_of_born
puts "Hello, #{name}! You are now approximately #{years_old} years old"