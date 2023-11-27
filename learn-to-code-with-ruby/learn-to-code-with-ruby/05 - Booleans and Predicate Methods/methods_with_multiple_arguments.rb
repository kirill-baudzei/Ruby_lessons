# методы с несколькими аргументами

puts 20.between? 10, 30 # аргументы можно писать без скобок. Но запятые нужны между аргументами Проверяет 20 находится между 10 и 30
puts 20.between? 10, 15 # false
puts 20.between?(10, 15) # false
puts 20.between?(10, 20) # true
puts 20.between?(20, 30) # true

puts 1.2.between?(1.1, 1.3) # true
puts -10.between?(-13, -8) # true
puts -8.3.between?(-9.5, -7.2) # true