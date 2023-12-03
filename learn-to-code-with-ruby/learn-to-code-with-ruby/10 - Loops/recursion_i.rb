# recursion
# рекурсия - метод вызывает сам себя
# base case - условие действий рекурсии

def print # метод вызывает puts, когда мы к нему обращаемся
  puts ""
end


# метод между def и end должен вызывать другой метод.
# пример с факториалом
# factorial. 5! = 1 * 2 * 3 * 4 *  = 120 = 5 * 4!
# 4! = 1 * 2 * 3 * 4 = 4 * 3!

def factorial(number)
  return 1 if number == 1 # можно использовать такой формт записи вместо return на новой строке.
  number * factorial(number - 1) # метод используется в методе (вызывает сам себя). 5 * factorial(4) и так далее....
end

puts factorial(5)
puts factorial(1)
puts factorial(7)


# First Layer:  5 * factorial(4) = 120
# Second layer 4 * factorial(3)
# Third Layer 3 * factorial(2)
# Fourt layer 2 * factorial (1)
# last layer number == 1. заканчивает работу

# 5 * 4!
#     4 * 3!
#         3 * 2!
#             2 * 1!

