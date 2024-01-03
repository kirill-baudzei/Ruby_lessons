# Getter method - method that reads/gets/retrieves the value of an instance variable

class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end
  
  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end
  
  def type
    @type 
  end
  
  def wood
    @wood
  end
  
  def strings
    @strings
  end
end
  
  guitar = Guitar.new
  p guitar.type # "Acoustic"
  p guitar.wood # "Alder"
  p guitar.strings # 6




# Getter-метод в Ruby классах предоставляет доступ к значению экземплярной переменной (instance variable) извне класса. 
# Обычно имя getter-метода совпадает с именем переменной, к которой он предоставляет доступ. 
# Для создания getter-метода используется ключевое слово attr_reader или его более длинная форма.
# Пример с использованием attr_reader:

class MyClass
  attr_reader :my_variable

  def initialize(value)
    @my_variable = value
  end
end

obj = MyClass.new("Hello, World!")
puts obj.my_variable
# Output: Hello, World!
# В данном примере attr_reader :my_variable автоматически создает метод my_variable, 
# который позволяет получить значение экземплярной переменной @my_variable. 
# Это сокращенный способ создания getter-метода.