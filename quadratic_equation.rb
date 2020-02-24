def show_D_and_roots(a, b, c)
  roots = []
  d = b ** 2 - 4 * a * c

  puts "Дискриминант: #{d}"

  if d > 0
    roots << (-b + Math.sqrt(d)) / (2 * a)
    roots << (-b - Math.sqrt(d)) / (2 * a)
  elsif d == 0
    roots << (-b) / (2 * a)
  end

  puts "Корней нет" if roots.empty?
  
  roots.each do |root| puts "Корень: #{root}" end
end

puts "Введите через пробел три числа - коэффициенты A, B и C квадратного уравнения A*x^2 + B*x + C = 0"

user_input = gets.chomp.split(" ")
user_input.map! do |item| item.to_f end
show_D_and_roots(*user_input)