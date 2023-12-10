# map/collect - create a new array by performing a consistent operation
# on all elements from an original array
# методы map и collect
# map и collect в Ruby представляют собой одинаковые методы, используемые для преобразования элементов массива. 
# Они создают новый массив, содержащий результаты выполнения блока кода для каждого элемента исходного массива.

# Пример использования map:

# numbers = [1, 2, 3, 4, 5]
# squared_numbers = numbers.map { |n| n * n }
# puts squared_numbers # Выведет: [1, 4, 9, 16, 25]

# lengths = [] способ с each, но методы map и collect упрощают задачу
# birds.each { |bird| lengths << bird.length }
# p lengths

birds = ["Eagle", "Sparrow", "pegeon", "hawk", "penguin"]

# lengths = [] способ с each, но методы map и collect упрощают задачу
# birds.each { |bird| lengths << bird.length }
# p lengths

length = birds.map { |bird| bird.length } # более короткий метод
p length # [5, 7, 6, 4, 7]

length = birds.collect { |bird| bird.length } # аналогично коду выше, но с collect
p length # [5, 7, 6, 4, 7]

upcase = birds.map { |bird| bird.upcase } 
p upcase