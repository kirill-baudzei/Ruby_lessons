# attr_accessor (Геттер и Сеттер):

# attr_accessor комбинирует функционал attr_reader и attr_writer, создавая как метод чтения, 
# так и метод записи для указанных экземплярных переменных класса.

# Пример:

class MyClass
  attr_accessor :my_variable
  
  def initialize(value)
    @my_variable = value
  end
end

obj = MyClass.new(42)
puts obj.my_variable # 42
obj.my_variable = 100
puts obj.my_variable # 100
# В этом примере attr_accessor :my_variable автоматически создает как метод чтения (my_variable), так и метод записи (my_variable=).