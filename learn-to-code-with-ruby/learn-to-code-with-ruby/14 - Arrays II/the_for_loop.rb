# цикл for
# для элемента в повторяемой структуре данных
# for element in iterable data structure

# for number in [1, 2, 3]
#   puts number
# end

# Цикл for в Ruby используется для итерации по элементам коллекции (например, массиву или диапазону) и выполнения блока кода для каждого элемента.
# Однако в Ruby часто предпочитают использовать методы перечисления, 
# такие как each, map и другие, вместо цикла for. Пример с использованием each для массива:

for number in [1, 3, 5, 8]
  puts number # выводит цифры из массива. аналонично методу each 
end


for value in 1..10
  puts "Yay, we're iterating here!"
  puts "We are currently on #{value}"
end

# puts value. аналогичные записи

(1..10).each do |range_number| # работает и с ренжами и с массивами
    puts "Yay, we're iterating here!"
    puts "We are currently on #{range_number}"
  end
