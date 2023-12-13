# методы CHARS и EACH_CHAR - разбивают по символам.
# CHARS и EACH_CHAR - это методы для работы со строками в Ruby.

# CHARS: Метод chars возвращает массив символов строки. Он преобразует каждый символ строки в элемент массива. Пример:
str = "Hell   o"
chars_array = str.chars
puts chars_array.inspect
# # Вывод: ["H", "e", "l", "l", "o"]


# EACH_CHAR: Метод each_char предоставляет возможность итерировать по каждому символу строки без создания массива. Пример:
str = "World"
str.each_char { |char| puts "#{char} is cool" } # выводит каждую букву без массива
# # Вывод:
# # W is cool
# # o is cool
# # r is cool
# # l is cool
# # d is cool
# Оба метода полезны при работе с символами в строках и обеспечивают различные способы обработки символов.

venicle = "Spaceship"
symbols = venicle.chars
p symbols