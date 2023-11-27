# методы с аргументами

puts "Big Mac".include?("B") # проверяет есть ли аргумент B. выводит true 
puts "Big Mac".include?("M") # проверяет есть ли аргумент M. выводит true 
puts "Big Mac".include?("z") # выводит false
puts "Big Mac".include?("b") # выводит false (регистр влияет)
# puts "Big Mac".include?
# puts "Big Mac".include? "A", "B" - выдает ошибку. принимает только 1 аргумент

puts "Double Whopper"
puts("Double Whopper", "Triple Whopper") # записаны как аргументы - выведет в 2 разные строки