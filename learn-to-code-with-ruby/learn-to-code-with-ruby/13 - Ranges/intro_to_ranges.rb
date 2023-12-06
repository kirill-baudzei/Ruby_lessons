# INTRO TO RANGES

# range - sequence of numbers or letters in order
inclusive_nums = 1..5 # closed range (5 will be included). включая 5
exclusive_nums = 1...5 # open range (5 will be excluded) не ключая 5

puts inclusive_nums.class # range - отдельных класс
puts exclusive_nums.class

puts inclusive_nums.first #  не массивом выводит 1
puts exclusive_nums.first #  не массивом выводит 1 
puts inclusive_nums.last #  не массивом выводит 5
puts exclusive_nums.last #  не массивом выводит 5

puts 

p inclusive_nums.first(3) # выводит первые 3 из ренжа [1, 2, 3] - массивом
p exclusive_nums.first(3) # [1, 2, 3]

p inclusive_nums.last(3) # [3, 4, 5]
p exclusive_nums.last(3) # [2, 3, 4] - тк 5 не включено в ренж

p inclusive_nums.last(1) # [5]
p exclusive_nums.last(1) # [4]

puts

p (2...10).last # 10 не массивом выводит последнее число ренжа
p (5..13).last(2) # массивом выводит два последних числа в ренже [12, 13]