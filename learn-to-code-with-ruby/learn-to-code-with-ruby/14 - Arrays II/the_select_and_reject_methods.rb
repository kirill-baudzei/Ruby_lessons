# методы select и reject
# select и reject - это методы массивов в Ruby, предназначенные для фильтрации элементов массива в соответствии с условиями, заданными блоком кода.

# select: Создает новый массив, включающий только те элементы, для которых блок кода возвращает true.

# Пример использования select:
# numbers = [1, 2, 3, 4, 5]
# even_numbers = numbers.select { |n| n.even? }
# puts even_numbers # Выведет: [2, 4]

# reject: Создает новый массив, включающий только те элементы, для которых блок кода возвращает false. 
# То есть, он выполняет отрицание условия select.
# Пример использования reject:
# numbers = [1, 2, 3, 4, 5]
# odd_numbers = numbers.reject { |n| n.even? }
# puts odd_numbers # Выведет: [1, 3, 5]
# Оба метода возвращают новый массив, оставляя исходный массив неизменным.

words = ["racecar", "selfless", "sentenses", "level", "house"]
# найдем слово у которого первая и последняя буква иденичны
palindromes = words.select { |word| word == word.reverse } # racecar == racecar true. останутся только элементы для которых true
p palindromes # ["racecar", "level"]


animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]
# If the block returns true, then Ruby will REJECT that element (Exclude it)
# If the block returns false, then Ruby will INCLUDE that element
# удалим элементы где есть буква C
p animals.reject { |animal| animal.include?("c") } # ["lion", "elephant", "dog"]. остались только элементы без буквы "c"