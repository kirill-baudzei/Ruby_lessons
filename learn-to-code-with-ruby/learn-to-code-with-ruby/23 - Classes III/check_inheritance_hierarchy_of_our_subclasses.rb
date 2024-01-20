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

p Manager.superclass # Employee
p Worker.superclass # Employee
p Employee.subclasses # [Worker, Manager]
p Employee.superclass # Object

p Worker.ancestors # [Worker, Employee, Object, Kernel, BasicObject]
p Manager.ancestors # [Manager, Employee, Object, Kernel, BasicObject]

puts 

puts Manager < Employee # true - проверяет, является ли Manager сабклассом Employee
puts Employee < Worker