# private methods

# В Ruby ключевое слово private используется для определения приватных методов внутри класса. 
# Приватные методы могут быть вызваны только изнутри самого класса, они не могут быть вызваны извне объекта этого класса или его подклассов. 
# Приватные методы обычно используются для реализации внутренней логики класса, 
# которая не предназначена для прямого взаимодействия с внешним миром.

# Пример:

class MyClass
  def public_method
    puts "This is a public method"
    private_method  # Внутри класса можно вызывать приватные методы
  end

  private # все что ниже - приватно. Нельзя использовать вне класса!

  def private_method
    puts "This is a private method"
  end
end

obj = MyClass.new
obj.public_method  # Ок
# obj.private_method # Ошибка! Нельзя вызвать приватный метод извне класса



class Smartphone
  attr_reader :usernanme, :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = self.generate_production_number
  end

  private # все что ниже - приватно. Нельзя использовать вне класса!

  def generate_production_number
    random_number = rand(10_000...99_999)
    another_rand_num = rand(10_000...99_999)
    "2023-#{random_number}-#{another_rand_num}"
  end
end

phone = Smartphone.new("Rubyphone123", "Qwerty")
p phone.production_number # "2023-85124-86979"
