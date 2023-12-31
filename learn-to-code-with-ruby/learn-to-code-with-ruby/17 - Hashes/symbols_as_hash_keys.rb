# Symbol как ключ в Хэше

# В Ruby символы часто используются в качестве ключей в хэшах из-за своей уникальности и неизменяемости. 
# Вот несколько важных моментов о символах в роли ключей в хэшах:

# Уникальность: Каждый символ в Ruby уникален. Если вы создаете символ с определенным именем, он представляет собой уникальный объект в памяти.

hash = { :name => "John", :age => 30 }
# В этом примере :name и :age - это символы, и они представляют уникальные ключи в хэше.

# Эффективность памяти: Поскольку символы уникальны и неизменяемы, они обычно требуют меньше памяти по сравнению со строками в роли ключей хэша.

# Быстрый доступ: Поиск значения по символьному ключу в хэше происходит быстрее, чем по строковому ключу, так как символы сравниваются быстрее из-за их уникальности и фиксированного размера.

# Пример использования символов в хэше:

person = { :name => "John", :age => 30, :city => "New York" }
puts person[:name]  # Вывод: John


person = {
  name: "Kirill", # можно задавать через символ ключ в таком формате
  age: 21, # не используем =>
  handsome: true
}

puts person[:name]
puts person[:age]
puts person[:handsome]