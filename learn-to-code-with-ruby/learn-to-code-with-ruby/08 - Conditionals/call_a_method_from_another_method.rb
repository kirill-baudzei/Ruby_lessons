# вызов метода в другом методе

# создаем методы для упрощение операции

def add(a, b)
    a + b
end

def substract(a, b)
    a - b
end

def multiply(a, b)
    a * b
end

def calculater(a , b, operation) # третьим аргументом будем использовать методы описанные выше
  if operation == "add"
    add(a, b) # используем уже созданный метод
    # it could be 10 lines of logic. Simple example
  elsif operation == "substract"
    substract(a, b) # используем уже созданный метод
  elsif operation == "multiply"
    multiply(a, b) # используем уже созданный метод
  else
    "There is no such a type of operation"
  end
end

puts calculater(3, 5, "add") # считает сумму по условию выше 8
puts calculater(5, 5, "substract") # 0
puts calculater(3, 5, "multiply") # 15
puts calculater(3, 5, "do")

