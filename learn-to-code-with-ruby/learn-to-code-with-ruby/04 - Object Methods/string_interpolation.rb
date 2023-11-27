# Интерполяция строк

name = "Kirill"
puts "Hello #{name}! How are you?" # через #{имя переменной} можем добавлять в стринг нашу переменную

age = 21
puts "#{name} is #{age} Years Old" # так же можно вносить и стринг 

puts "In 2 year I will be #{age + 2} years old" # все операции в свобках валидны. выведем In 2 year I will be 23 years old

# еще один пример

x = 10
y = 15
puts "The sum of #{x} and #{y} is #{x + y}"