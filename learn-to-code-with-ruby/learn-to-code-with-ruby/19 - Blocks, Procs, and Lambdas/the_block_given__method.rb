# block_given? method determines whether a block was provided to method invocation
# возвращает boolean

# Метод block_given? в Ruby используется для проверки наличия блока внутри метода. 
# Он возвращает true, если блок был передан в метод, и false в противном случае.

# Пример использования:

def my_method
  if block_given?
    puts "Block is provided"
    yield
  else
    puts "No block is provided"
  end
end

my_method do
  puts "Inside the block"
end
# Block is provided
# Inside the block
my_method
# No block is provided

# В этом примере, при вызове my_method с блоком, он выведет "Block is provided" и затем выполнит содержимое блока. 
# Если вызвать my_method без блока, то выведется "No block is provided". 
# Метод block_given? помогает определить, был ли передан блок при вызове метода.


def pass_control_on_codition
  puts "inside the method"
  yield if block_given? # более простая форма записи
  puts "Back inside the method"
end

pass_control_on_codition { puts "We are Inside the block" }
# inside the method
# We are Inside the block
# Back inside the method

pass_control_on_codition
# inside the method
# Back inside the method
