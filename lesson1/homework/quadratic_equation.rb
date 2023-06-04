puts "Напишите через запятую значения a,b,c для вычисления дискриминанта:"
arr = gets.chomp.split(",")
a, b, c = arr
a, b, c = a.to_f, b.to_f, c.to_f

d = (b**2 - 4 * a * c)
square_root = if d.negative?
  Math.sqrt(d * -1)
else
  Math.sqrt(d)
end

if d.positive?
  x1 = (-b + square_root) / (2 * a)
  x2 = (-b - square_root) / (2 * a)
  puts "Дискриминант больше нуля, х1 = #{x1}, х2 = #{x2}"
elsif d.zero?
  x = -b / (2 * a)
  puts "Дискриминант равен нулю, х = #{x}"
elsif d.negative?
  puts "Дискриминант меньше нуля, нет корней"
end