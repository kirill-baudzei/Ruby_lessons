# методы length / size/ count с массивами

puts "Double Whopper".length

puts [1, 2, 3, 4].length
puts ["Hi", "there", nil].length # выводит количество элементов
puts [].length
puts [1, 2, 3, 4].size
puts ["Hi", "there", nil].size # аналогично length
puts [].size

puts 

puts [1, 2, 3, 4, 5, 2].count # так считает кол-во элементов
puts [1, 2, 3, 4, 5, 2].count(5) # считает сколько раз повторяется элемент 5
puts [1, 2, 3, 4, 5, 2].count(2) # считает сколько раз повторяется элемент 2. Выводит 2