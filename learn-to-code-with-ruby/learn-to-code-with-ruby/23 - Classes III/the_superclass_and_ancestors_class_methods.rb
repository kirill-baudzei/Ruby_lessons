# superclass method - return the superclass that class inherits from
# ancestors  - return an array of all superclasses ( plus extra stuff )

# superclass method - возвращает родительский класс, от которого наследуется текущий класс.
# ancestors - возвращает массив всех родительских классов (плюс дополнительные элементы).

p 5.class # Integer
p 5.class.superclass # Numeric
p 5.class.superclass.superclass # Object
p 5.class.superclass.superclass.superclass # BasicObject
p 5.class.superclass.superclass.superclass.superclass # nil - мы дошли до верхушки - дальше суперкласса нет

# BasicObject
#       \
#       Object
#          \
#       Numeric
#           \
#         Integer 



p 5.class.ancestors # [Integer, Numeric, Comparable, Object, Kernel, BasicObject] - выводит все цепочку наследования 

p 3.14.class.ancestors # [Float, Numeric, Comparable, Object, Kernel, BasicObject]

p "String".class.ancestors # [String, Comparable, Object, Kernel, BasicObject]

p [].class.ancestors # [Array, Enumerable, Object, Kernel, BasicObject]


