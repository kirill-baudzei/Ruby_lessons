# Создание множества
my_set = Set.new([1, 2, 3, 3, 4, 5, 5])

# Добавление элемента
my_set.add(6) # добавляет сам элемент

# Проверка наличия элемента
puts my_set.include?(3)  # Вывод: true

# Удаление элемента
my_set.delete(2) # удаляем сам элемент. 2 - это значение, не порядок

# Итерация по элементам множества
my_set.each { |element| puts element }

# Операции с множествами
set1 = Set.new([1, 2, 3])
set2 = Set.new([3, 4, 5])

union_set = set1.union(set2)        # Объединение множеств
intersection_set = set1.intersection(set2)  # Пересечение множеств - остается то , что общее

puts union_set.to_a.inspect         # Вывод: [1, 2, 3, 4, 5]
puts intersection_set.to_a.inspect  # Вывод: [3]


plays = Set.new(["Romeo and Juliet", "Hamlet"])
p plays # #<Set: {"Romeo and Juliet", "Hamlet"}>
p plays.class # Set

p plays.add("King Lear") # <Set: {"Romeo and Juliet", "Hamlet", "King Lear"}
p plays.add("King Lear") # #<Set: {"Romeo and Juliet", "Hamlet", "King Lear"}> - дубль не добавляется

p plays.delete("Hamlet") # удаляет одно навсегда. если такого нет - возвращает сам сет #<Set: {"Romeo and Juliet", "King Lear"}>
p plays.delete("Hamlet") # #<Set: {"Romeo and Juliet", "King Lear"}>
p plays.delete("Hamlet") # #<Set: {"Romeo and Juliet", "King Lear"}>