# create a class
# создание класса
# UpperCamelCase - Capitalize first letter of every word

class Guitar # новый класс создает с заглавной буквой
  # логика класса
end

acoustic = Guitar.new # добавление объекта в класс
electric = Guitar.new
hybrid = Guitar.new

puts acoustic # #<Guitar:0x0000027f54a33fb0> - это отображает , где обьект хранится в памяти. 
puts electric #<Guitar:0x000001b43cf38df0> - для каждого элемента запись уникальна
puts hybrid 
 
puts acoustic.class # Guitar
puts electric.class # Guitar
puts hybrid.class # Guitar