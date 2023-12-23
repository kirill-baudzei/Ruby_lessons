# reject and inject methods
# inject/reduce methods - derive a new value by combining all array elements 

# first block variable - the "aggregate" value, the value being calculated
# second block variable - the current array element
# block calculation - what to send to next loop as the "aggregate" value


# Методы inject и reduce в Ruby предназначены для выполнения аккумулирующих операций над элементами массива, 
# сводя их к одному значению. Эти методы принимают блок кода и начальное значение аккумулятора.

# array - Массив, над элементами которого выполняется операция.
# initial: Начальное значение аккумулятора.
# accumulator: Переменная, которая аккумулирует результат операций.
# element: Текущий элемент массива.
# block: Блок кода, который определяет операцию.
# Пример с использованием inject для вычисления суммы элементов массива:

numbers = [1, 2, 3, 4, 5]
sum = numbers.inject(0) { |result, num| result + num }

puts sum
# Вывод: 15
# В этом примере начальное значение аккумулятора (0) передается методу inject, 
# а блок кода выполняет сложение текущего элемента массива с текущим значением аккумулятора. 
# Результат — сумма всех элементов массива.

p [10, 20, 30].reduce(0) { |sum, number| sum + number }
p [10, 20, 30].inject(100) { |sum, number| sum + number } # 160. тк sum изначально передается аргументом (100)

# element = 10, sum = 0, number = 10, sum + number = 10
# element = 20, sum = 10, number = 20, sum + number = 30
# element = 30, sum = 30, number = 30, sum + number = 60

color_counts = ["Red", "Blue", "Red"].inject({}) do |counts, color|
  if counts[color].nil?
    counts[color] = 1
  else
    counts[color] += 1
  end
  counts
end

p color_counts