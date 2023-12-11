# unlimited method arguments
# В Ruby есть концепция "splat" аргумента, который позволяет передавать переменное количество аргументов в метод. Специальный символ * используется для этого. 
# Когда он ставится перед параметром метода, он собирает все оставшиеся аргументы в массив.

def print_arguments(one, two, *args)
  args.each do |arg|
    puts arg
  end
end
p print_arguments(1, 2, 3, "four", "five") 
# Здесь *args означает, что метод print_arguments может принимать любое количество аргументов. 
# Переданные аргументы будут доступны внутри метода в виде массива args.



def adder(*numbers) # когда есть splat * , то можно передавать любое количество аргументов и оно соберет их в массив
  sum = 0
  numbers.each { |number| sum += number }
  sum
end
p adder(1)
p adder(1, 2) # выводит 3
p adder(1, 2, 3, 4, 5) # выводит 15
p adder # выводит 0


def adder_two(a, b, *numbers_two) # когда есть splat * , то можно передавать любое количество аргументов и оно соберет их в массив
    # numbers_two - это массив значений
    sum = 0
    numbers_two.each { |number| sum += number }
    sum
  end
  p adder_two(1, 2) # выводит 0, так как два аргумента есть - остальных нет
  p adder_two(1, 2, 3, 4, 5) # выводит 12 (считает только аргументы после первых двух - то есть 3 , 4 , 5)
  # a = 1, b = 2, [3 , 4, 5] - numbers_two



def adder_three(a, b, *numbers_three, c, d)
  sum = 0
  numbers_three.each { |number| sum += number }
  sum
end
p adder_three(1, 2, 3, 4)     # a = 1, b = 2, numbers = [], c = 3, d = 4
p adder_three(1, 2, 3, 4, 5)  # a = 1, b = 2, numbers = [3], c = 4, d = 5
p adder_three(1, 2, 3, 4, 5, 6) # a = 1, b = 2, numbers = [3, 4], c = 5, d = 6
  
  
