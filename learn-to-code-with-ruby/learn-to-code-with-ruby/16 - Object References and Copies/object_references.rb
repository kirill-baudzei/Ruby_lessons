# object_references 

a = [1, 2, 3]
b = a
p b

p a.object_id # 60
p b.object_id # 60 - одинаковые айди, тк это копии

# В Ruby все переменные, даже те, которые хранят объекты, на самом деле содержат ссылки на объекты в памяти. 
# Когда переменная присваивается другому объекту, ссылка изменяется так, чтобы указывать на новый объект. 
# Однако это не касается примитивных типов данных, таких как числа и символы, которые обычно хранятся непосредственно в переменных.

# Пример:
a = "Hello"
b = a  # Теперь b ссылается на тот же объект, что и a

b.upcase!  # Это изменит и a, так как они ссылаются на один и тот же объект

puts a  # Выведет "HELLO"
puts b  # Также выведет "HELLO"
# В данном примере a и b содержат ссылки на один и тот же объект строки "Hello". 
# Если изменить объект через одну из переменных, изменения будут видны и через другую переменную.


p [1, 2, 3].object_id
p [1, 2, 3].object_id
p [1, 2, 3].object_id
p [1, 2, 3].object_id

puts

b << 5
p b
p a