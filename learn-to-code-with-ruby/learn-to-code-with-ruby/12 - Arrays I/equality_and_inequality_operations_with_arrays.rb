# equality_and_inequality_operations_with_arrays. Равенство и неравенство с массивами

candy = ["Skittles", "Starbursts", "Snickers"]
vegetables = ["Radishes", "Onions"]
desserts = ["Skittles", "Starbursts", "Snickers"]
sweets = ["Skittles", "Starbursts", "snickers"]

puts candy == desserts # true. имеют одинаковое количество элементов и элементы между собой одинаковы
puts candy == vegetables # false
puts candy == sweets # true. Элемент отличается только большой буквой

puts

puts candy != desserts # != не равно. Выводит false, тк равно
puts candy != vegetables
puts candy != sweets