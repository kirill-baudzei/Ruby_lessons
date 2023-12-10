# метод partition
# partition - split an array into two arrays based on matching/not matching a condition
# partition - это метод массивов в Ruby, который разделяет элементы массива на две группы в соответствии с условием, заданным блоком кода. В результате работы partition создает массив из двух подмассивов: один содержит элементы, для которых блок возвращает true, а второй - элементы, для которых блок возвращает false.

# Пример использования partition:
# numbers = [1, 2, 3, 4, 5]
# even_and_odd = numbers.partition { |n| n.even? }
# puts even_and_odd
# # Выведет: [[2, 4], [1, 3, 5]]


foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

# good - food that includes the word "Steak"
# bad  - food that does not include the word "Steak"

good_foods = foods.select { |food| food.include?("Steak") } # метод через select
bad_foods = foods.reject { |food| food.include?("Steak") } # метод через reject
p good_foods
p bad_foods
# получаем 2 разных массива


# более простой способ через метод partition
good_foods, bad_foods = foods.partition { |food| food.include?("Steak")} # присваивает каждой переменной по массиву
# good_foods массив для true
# bad_foods массив для false
p good_foods
p bad_foods