# метод reverse
# reverse метод

# Метод reverse для массива в Ruby используется для обращения порядка элементов в массиве. Вот пример:

original_array = [1, 2, 3, 4, 5]
reversed_array = original_array.reverse

p reversed_array # [5, 4, 3, 2, 1]
p original_array # [1, 2, 3, 4, 5]

reversed_array = original_array.reverse!
p original_array # [5, 4, 3, 2, 1] оригинальный массив изменился из-за !
# В этом примере reversed_array будет содержать элементы [5, 4, 3, 2, 1], 
# обратные порядку элементов в original_array. Метод reverse не изменяет оригинальный массив, 
# а создает новый массив с элементами в обратном порядке. Если вы хотите изменить оригинальный массив, 
# вы можете использовать метод reverse!.