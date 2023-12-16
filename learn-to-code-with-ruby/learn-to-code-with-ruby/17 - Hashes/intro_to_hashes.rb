# Intro to Hashes
#
# A hash is a data structure consisting of key-value pairs.
# A key is an identifier for a value.
# A hash solves the problem of association (connecting two values together).
#
# Example: Restaurant menu connects a food item to a price
# Example: A dictionary connects a word to a definition
#
# Rules of a Hash
# Hash keys must be unique.
# Hash values can contain duplicates.
# Hash values are extracted by key, not by order.

# Хеш (Hash) в Ruby представляет собой коллекцию пар "ключ-значение", где каждый ключ должен быть уникальным.
# Вот несколько ключевых особенностей хешей в Ruby:

# Создание хеша:
my_hash = { "name" => "John", "age" => 30, "city" => "New York" }

# Доступ к значениям по ключу:
puts my_hash["name"] # Выводит "John"

# Добавление новой пары ключ-значение:
my_hash["occupation"] = "Developer"

# Итерация по хешу:
my_hash.each do |key, value|
  puts "#{key}: #{value}"
end

# Проверка наличия ключа:
puts my_hash.key?("age") # Выводит true

# Удаление элемента по ключу:
my_hash.delete("age")

# Символы в качестве ключей (Symbol Keys):
another_hash = { name: "Jane", age: 25, city: "London" }
# В этом примере :name, :age, и :city - это символы, часто используемые в качестве ключей хешей.
# Хеши предоставляют эффективный способ организации и хранения данных в Ruby, и они широко используются в языке для различных задач.