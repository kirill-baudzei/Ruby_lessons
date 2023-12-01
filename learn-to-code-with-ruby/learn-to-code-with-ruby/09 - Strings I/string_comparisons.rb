# string_comparisons
# сравнение стрингов
a = "Hello!"
b = "hello!"
c = "Hello!"

puts a == c 

a = "Hello"
b = "hello"
c = "Hello"

puts a == b
puts a == c
puts a == a
puts b == "hello"

puts a != b # проверяет неравенство. то есть если не равны , то это TRUE
puts a != c

puts

puts "A" < "B" # определяет порядок из алфавита. Чем буква раньше в алфавите - тем меньше 
puts "A" < "Z" # true
puts "M" < "E" # flase

puts "L" > "F"
puts "L" > "M"

puts "Z" < "a"
puts "a" < "z"
puts "a" < "Z" # true. так как сначала идут большие буквы

puts "hello" < "help" # сверяет по БУКВАМ каждую

puts "A" > "z" # false 
puts "a" > "z" # false

# A, B, C, D, E, F сначала все большие
# a, b, c, d, e, f потом все маленькие

# false
# true
# true
# true
# true
# false

# true
# true
# false
# true
# false
# true
# true
# false
# true