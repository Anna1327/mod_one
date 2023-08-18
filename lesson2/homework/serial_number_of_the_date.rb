def leap_year?(year)
  !(year % 4 != 0 || ((year % 100).zero? && year % 400 != 0))
end

puts "Please, write number of day: "
day_number = gets.chomp.to_i
puts "Please, write number of month: "
month_number = gets.chomp.to_i
puts "Please, write number of year: "
year_number = gets.chomp.to_i
count_days_in_year = if leap_year?(year_number)
  366
else
  365
end

days_in_months_usual_year = {
  1 => 31, 2 => 28, 3 => 31, 
  4 => 30, 5 => 31, 6 => 30, 7 => 31,
  8 => 31, 9 => 30, 10 => 31, 
  11 => 30, 12 => 31
}

days_in_months_leap_year = {
  1 => 31, 2 => 29, 3 => 31, 
  4 => 30, 5 => 31, 6 => 30, 7 => 31,
  8 => 31, 9 => 30, 10 => 31, 
  11 => 30, 12 => 31
}

days_in_months = if count_days_in_year == 365
  days_in_months_usual_year
else
  days_in_months_leap_year
end

number_of_date = 0
days_in_months.each do |m, d|
  break if m == month_number
  number_of_date += d
end
number_of_date += day_number

puts "Number of date is #{number_of_date}"