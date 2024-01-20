# методы is_a? and instance_of?

# Метод instance_of? в Ruby проверяет, является ли объект экземпляром конкретного класса. 
# Он возвращает true, если объект является экземпляром указанного класса, и false в противном случае.

# Метод is_a? в Ruby используется для проверки того, является ли объект экземпляром определенного класса или его подкласса. 
# Он возвращает true, если объект является экземпляром указанного класса или его подкласса, и false в противном случае. 
# Метод позволяет учитывать иерархию классов при проверке типа объекта.

class Employee
  attr_reader :name
  attr_accessor :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def introduce
    "Hi! My name is #{name} and I am #{age} years old"
  end
end
  
class Manager < Employee
end
  
class Worker < Employee
end
  
bob = Manager.new("Bob", 29)

puts bob.instance_of?(Manager) # true
puts bob.instance_of?(Worker) # false
# instance_of? проверяет только на КОНКРЕТНЫЙ КЛАСС
# is_a? проверяет и на суперклассы

puts bob.is_a?(Employee) # true
puts bob.is_a?(Worker) # false Worker ниже в иерархии - false. все что выше - true
puts bob.is_a?(Manager)
