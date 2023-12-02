# bang_methods_on_strings
# bang методы заканчиваются на !
# такие методы изменяют начальное значение (модифицируют)

word = "makaron"
# puts word.capitalize
word.capitalize! # метод с ! модифицирует переменную . мутирует и изменяет значение

word.upcase!
puts word

word.downcase!
puts word

word.reverse!
puts word

word.swapcase!
puts word
# использовать с умом. так как изменяет изначально созданный объект!!!

