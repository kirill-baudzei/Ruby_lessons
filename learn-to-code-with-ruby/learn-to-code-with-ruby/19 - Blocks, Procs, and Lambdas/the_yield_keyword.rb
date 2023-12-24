# yield - directly inside the method
# yield - это способ вставить выполнение кода из блока внутрь метода.
# yield в Ruby - это ключевое слово, используемое внутри метода для передачи управления в блок, 
# который был передан методу в качестве аргумента. Когда метод содержит yield, 
# выполнение программы приостанавливается, и управление передается блоку кода, который был передан в метод.

# Пример:

def my_method
  puts "Start of the method"
  yield if block_given?
  puts "End of the method"
end

my_method do
  puts "Inside the block"
end
# В этом примере, при вызове my_method с блоком, содержимое блока выполняется внутри метода в том месте, 
# где находится yield. Вывод будет:

# Start of the method
# Inside the block
# End of the method
# Ключевое слово yield может также передавать аргументы блоку, если они указаны после yield.



def pass_control
  puts "I am at the start of pass_control method"
  yield
  puts "yield is over, it is the last line of code now"
  yield
  puts "Haha - now the last because of the second yield"
end

pass_control { puts "Now I am inside the block, because of yield"}
# вывод
# I am at the start of pass_control method
# Now I am inside the block, because of yield
# yield is over, it is the last line of code now
# Now I am inside the block, because of yield
# Haha - now the last because of the second yield