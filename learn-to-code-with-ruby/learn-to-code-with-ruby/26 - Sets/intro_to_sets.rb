# A Set is an unordered data structure that 
# guarantees the uniqueness of its values. 
# Sets solve the problem of duplication.
#
# Ruby 3.2 autoloads Set class when code uses it
# In earlier versions, we need to require "set" file

# Множество (Set) - это неупорядоченная структура данных, которая гарантирует уникальность своих значений. 
# Множества решают проблему дублирования.

# В Ruby 3.2 класс Set автоматически загружается, когда код его использует. 
# В более ранних версиях нам необходимо использовать require "set" для загрузки класса Set.

require "set"

seasons = Set.new(["Fall", "Winter", "Spring", "Summer"]) # set гарантирует уникальность. Удаляет дубли если они есть
p seasons.length # 4
p seasons.include?("Winter") # true
p seasons.include?("winter") # false
 
seasons.each { |season| p season }

# В Ruby множество (Set) - это коллекция, которая содержит только уникальные элементы и не упорядочена. 
# Она предоставляет эффективный способ проверки уникальности элементов в коллекции.

# Основные особенности множеств в Ruby:

# Уникальность элементов: В Set не могут содержаться повторяющиеся элементы. 
# Если вы добавляете в множество элемент, который уже присутствует, он не будет добавлен повторно.

# Неупорядоченность: Элементы в множестве не упорядочены в том порядке, в котором они были добавлены.

require 'set'

# Создание множества
my_set = Set.new([1, 2, 3, 3, 4, 5, 5])

# Добавление элемента
my_set.add(6)

# Проверка наличия элемента
puts my_set.include?(3)  # Вывод: true

# Удаление элемента
my_set.delete(2)

# Итерация по элементам множества
my_set.each { |element| puts element }

# Операции с множествами
set1 = Set.new([1, 2, 3])
set2 = Set.new([3, 4, 5])

union_set = set1.union(set2)        # Объединение множеств
intersection_set = set1.intersection(set2)  # Пересечение множеств

puts union_set.to_a.inspect         # Вывод: [1, 2, 3, 4, 5]
puts intersection_set.to_a.inspect  # Вывод: [3]
