# методы index и find_index
# Методы index и find_index в Ruby используются для нахождения индекса первого элемента в массиве, который соответствует заданному условию 
# (указанному в блоке кода). Оба метода выполняют поиск и возвращают индекс найденного элемента или nil, если ни один элемент не соответствует условиям.

# Примеры использования:
# index:
numbers = [1, 2, 3, 4, 5]
result = numbers.index { |n| n.even? }
puts result
# # Выведет: 1, так как это индекс первого четного числа в массиве

# find_index:
numbers = [1, 2, 3, 4, 5]
result = numbers.find_index { |n| n.odd? }
puts result
# # Выведет: 0, так как это индекс первого нечетного числа в массиве
# Оба метода могут использоваться для поиска индекса элемента, соответствующего заданным условиям в массиве.

colors = ["Red", "Blue", "Green", "Red"]

p colors.index("Green") # 2
p colors.index("Red") # 0
p colors.index("Orange") # nil

p colors.find_index("Green")  # 2
p colors.find_index("Red") # 0
p colors.find_index("Orange") # nil

p colors.find_index { |word| word.include?("ee") } # выводит 2 , так элемент Green первый который подходит
