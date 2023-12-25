# Proc - an object representation of a block
# procedure

# В Ruby, Proc (кратко от "procedure") представляет собой объект, 
# который содержит блок кода и может быть сохранен в переменной или передан 
# как аргумент метода. Он является способом создания анонимных блоков кода для 
# повторного использования. Процедуры похожи на блоки, но они являются объектами, 
# что позволяет их хранить и передавать в коде.

# Пример создания Proc:

my_proc = Proc.new { |x| puts x * 2 }

# Вызов процедуры
my_proc.call(5)  # Вывод: 10
# Процедуры могут использоваться для создания абстракций, обертывания блоков кода и передачи их в методы. 
# Они также часто используются вместе с методами, 
# принимающими блоки, для передачи блока кода в качестве аргумента.
# Еще пример
def perform_operation(x, y, operation)
  result = operation.call(x, y)
  puts "Result: #{result}"
end

multiply = Proc.new { |a, b| a * b }
add = Proc.new { |a, b| a + b }

perform_operation(3, 4, multiply)  # Вывод: Result: 12
perform_operation(3, 4, add)       # Вывод: Result: 7



to_cubes = Proc.new { |number| number ** 3 }
# to_cubes = Proc.new do |number| 

p a.map(&to_cubes)
p b.map(&to_cubes)
p c.map(&to_cubes)
# можно создать его так
# to_cubes = Proc.new do |number| 
#   number ** 3
# end