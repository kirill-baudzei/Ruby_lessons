

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