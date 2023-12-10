# В Ruby методы any? и all? предназначены для проверки условий в массиве.

# any?: Возвращает true, если хотя бы один элемент массива соответствует условию, заданному блоком кода.
# Пример:
numbers = [1, 2, 3, 4, 5]
has_even = numbers.any? { |n| n.even? }
puts has_even
# # Выведет: true, так как есть четные числа в массиве


# all?: Возвращает true, если все элементы массива соответствуют условию, заданному блоком кода.

# Пример:
numbers = [2, 4, 6, 8, 10]
all_even = numbers.all? { |n| n.even? }
puts all_even
# # Выведет: true, так как все числа в массиве четные
# Эти методы обеспечивают удобный способ проверки массива на соответствие определенным условиям без явного использования циклов.


sports = ["soccer", "tennis", "bascketball", "golf", "baseball"]
p sports.any? { |sport| sport.length == 8 } # выводит true, так как baseball содержит 8 букв
p sports.any? { |sport| sport.length == 12 } # false, так как нет элементов с длинной 12
p sports.all? { |sport| sport.length < 15 } # true, так как ВСЕ элементы соответсвуют условию
p sports.all? { |sport| sport.length < 10 } # false, так как один элемент не соответсвует
 