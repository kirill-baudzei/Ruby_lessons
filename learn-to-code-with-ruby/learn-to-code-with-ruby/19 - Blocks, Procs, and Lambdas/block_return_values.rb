# Blocks implicitly return their last evaluation back to the method

# Когда блок в Ruby возвращает значение, это значение становится значением последней операции в блоке. 
# Если блок передаётся методу и в этом методе используется yield, то значение, возвращаемое блоком, 
# будет также значением, возвращаемым методом.

# Пример:
def my_method
  result = yield
  p "Result from the block: #{result}"
end
  
my_method do
  "42"  # Это значение будет возвращено блоком и передано в переменную result
end
# В этом примере блок возвращает число 42, которое становится значением переменной result. 
# После этого значение выводится в методе my_method.
my_method { 15 } # "Result from the block: 15"




def who_am_i
  puts "Hello there! Let me tell you about myself"
  adjective = yield
  puts "I am very #{adjective}"
end
  
who_am_i { "handsome" } # первый вызов метода
who_am_i { "talented" } # второй вызов метода. выводы в output ниже
# Hello there! Let me tell you about myself
# I am very handsome
# Hello there! Let me tell you about myself
# I am very talented
  
puts
  
who_am_i do # вывод с двумя значениями в блоке, выведет последнее. так как берет только то, что блок возвращает
  "handsome"
  "wonderful"
end
# Hello there! Let me tell you about myself
# I am very wonderful
  
puts
  
who_am_i { return "charming" }
# выводит только Hello there! Let me tell you about myself, так как сработает return , 
# и дальше код выполняться не будет. 
# при return в этом блоке, код не дойдет до строки 26, так как все закончится на return в 25

