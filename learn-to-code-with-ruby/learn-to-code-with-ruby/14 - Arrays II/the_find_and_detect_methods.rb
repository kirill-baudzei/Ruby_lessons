# методы find и detect
# Методы find и detect в Ruby выполняют поиск первого элемента в массиве, который соответствует заданному условию (указанному в блоке кода). 
# Они возвращают первый найденный элемент или nil, если ни один элемент не соответствует условиям.

# Примеры использования:
# numbers = [1, 2, 3, 4, 5]
# result = numbers.find { |n| n.even? }
# puts result
# # Выведет: 2, так как это первое четное число в массиве

# numbers = [1, 2, 3, 4, 5]
# result = numbers.detect { |n| n.odd? }
# puts result
# Выведет: 1, так как это первое нечетное число в массиве
# Оба метода являются синонимами и могут использоваться взаимозаменяемо. 
# Они предоставляют удобный способ найти первый элемент, соответствующий заданным условиям в массиве.

words = ["essae", "Effort", "Eifel", "happy", "Kirill"]
p words.select { |word| word.include?("f") } # выведет ["Effort", "Eifel"], все что подходит под условие
p words.find { |word| word.include?("f") } # выводит "Effort" первый  найденный элемент подходящий под условие. Выводит просто string
p words.detect { |word| word.include?("h") } # выводит "happy" , тк первый элемент подходящий под условия
p words.detect { |word| word.include?("z") } # выводит nil
p words.select { |word| word.include?("z") } # выводит пусто массив []