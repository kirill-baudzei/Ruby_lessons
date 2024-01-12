# Setter-метод в Ruby классах предоставляет возможность изменять значения экземплярных переменных извне класса. 
# Имя setter-метода обычно совпадает с именем переменной, которую он устанавливает. 
# Для создания setter-метода используется ключевое слово attr_writer или его более длинная форма.

# В этом примере attr_accessor :my_variable автоматически создает как getter-метод my_variable, так и setter-метод my_variable=, 
# что позволяет удобно читать и изменять значение переменной.

class MyClass
  attr_accessor :my_variable
  
  def initialize(value)
    @my_variable = value
  end
end
  
obj = MyClass.new("Hello, World!")
obj.my_variable = "New value"
puts obj.my_variable
# Output: New value
# В данном примере attr_writer :my_variable автоматически создает метод my_variable=, 
# который позволяет изменить значение экземплярной переменной @my_variable. Это сокращенный способ создания setter-метода.



# Setter method - method that writes/sets/updates the value of an instance variable

class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @price = 1500
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
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
end
  
guitar = Guitar.new
p guitar.price
guitar.price=(5000)
p guitar.price
  
guitar.price = 10000 # более простой синтакс
p guitar.price
  
# guitar.wood = "Mahogany" - выдаст ошибку, тк переменная wood не переписываемая