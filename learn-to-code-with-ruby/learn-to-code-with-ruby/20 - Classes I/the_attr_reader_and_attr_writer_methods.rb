# методы attr_reader и attr_writer

# attr_reader и attr_writer - это макросы в языке программирования Ruby, 
# предназначенные для автоматического создания методов чтения (геттеров) и записи (сеттеров) для экземплярных переменных класса.

# attr_reader (Геттер):
# С помощью attr_reader можно создать методы чтения для одной или нескольких экземплярных переменных класса.
# Пример:

class MyClass
  attr_reader :my_variable
  
  def initialize(value)
    @my_variable = value
  end
end

obj = MyClass.new(42)
puts obj.my_variable
# В этом примере attr_reader :my_variable автоматически создает метод my_variable, 
# который возвращает значение экземплярной переменной @my_variable.



# attr_writer (Сеттер):
# С помощью attr_writer можно создать методы записи для одной или нескольких экземплярных переменных класса.

# Пример:

class MyClass
  attr_writer :my_variable
  
  def initialize(value)
    @my_variable = value
  end
end

obj = MyClass.new(42)
obj.my_variable = 100
# В этом примере attr_writer :my_variable автоматически создает метод my_variable=, 
# который позволяет установить новое значение экземплярной переменной @my_variable.