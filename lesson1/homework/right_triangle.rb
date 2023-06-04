puts "Напишите через запятую 3 стороны вашего треугольника"
arr = gets.chomp.split(",")
a, b, c = arr
a, b, c = a.to_i, b.to_i, c.to_i

if (a >= b && a >= c) || (a == b && b == c)
  hypotenuse = a
  k1 = b
  k2 = c
elsif b >= a && b >= c
  hypotenuse = b
  k1 = a
  k2 = c
elsif c >= a && c >= b
  hypotenuse = c
  k1 = a
  k2 = b
end

if k1**2 + k2**2 == hypotenuse**2
  puts "Ваш треугольник прямоугольный"
elsif a == b && b == c
  puts "Ваш треугольник равнобедренный и равносторонний"
elsif a == b || b == c || a == c
  puts "Ваш треугольник равнобедренный"
end