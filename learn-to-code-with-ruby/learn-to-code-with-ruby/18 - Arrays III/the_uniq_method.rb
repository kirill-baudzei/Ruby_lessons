# uniq method - return a new array without duplicates
# метод uniq возвращает массив только с уникальными элементами (удаляет повторяшки)

numbers = [1, 8, 3, 2, 3, 8, 1, 8, 9]
p numbers.uniq # [1, 8, 3, 2, 9]


numbers.uniq! # из-за ! полностью его изменяет
p numbers # [1, 8, 3, 2, 9]