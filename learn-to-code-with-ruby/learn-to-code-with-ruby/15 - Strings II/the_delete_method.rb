# метод delete для string

# Метод delete для строки в Ruby используется для удаления указанных символов из строки. 
# Он принимает один или несколько аргументов, которые представляют символы, подлежащие удалению. 
# Результатом вызова метода delete будет новая строка, в которой все указанные символы будут удалены.

# Пример использования метода delete:

original_string = "Hello, World!"
modified_string = original_string.delete('lW')
puts modified_string
# Output: "Heo, ood!"
# В данном примере метод delete удаляет символы 'l' и 'W' из строки original_string, и результат сохраняется в modified_string.

p "Love Cheese".delete("e") # "Lov Chs" удаляет все буквы e
p "Love Cheese".delete("ve") # удаляет все v и e по отдельности