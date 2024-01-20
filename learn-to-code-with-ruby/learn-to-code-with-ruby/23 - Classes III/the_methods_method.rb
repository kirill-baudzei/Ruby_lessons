# methods method


# В Ruby метод methods является встроенным методом объекта и возвращает массив имен всех методов, доступных для вызова на данном объекте.
# Этот массив включает все методы, включенные из всех подключенных модулей, и методы, определенные в самом классе объекта.

p 5.methods # - возвращает список методов, доступных для объекта
# [:remainder, :gcd, :lcm, :gcdlcm, :~, :floor, :ceil, :round, :truncate, :**, :<=>, :>=, :==, and so on ............


p 3.14.methods # возвращает массив методов для float

integer_methods = 5.methods.sort

float_methods = 3.14.methods.sort

p float_methods - integer_methods # [:nan?, :next_float, :prev_float] - методы доступные только для float, недоступные для integer

p integer_methods - float_methods # методы только у Integer