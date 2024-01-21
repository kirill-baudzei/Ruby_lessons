# super keyword
# Ключевое слово super в Ruby используется в контексте наследования и обозначает вызов метода с тем же именем из родительского 
# (или суперкласса) класса. 
# Оно позволяет подклассу использовать реализацию метода, определенного в его суперклассе, и при этом вносить свои изменения или дополнения.
# простой пример

class Parent
  def greeting
    "Hello from the Parent class!"
  end
end
  
class Child < Parent
  def greeting
    super + " And hi from the Child class!"
  end
end
  
child = Child.new
puts child.greeting # Hello from the Parent class! And hi from the Child class!
# метод супер вызывает метод greeting из суперкласса и добавляет изменения из субкласса

  

# пример 2
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
  
  def initialize(name, age, rank)
    super(name, age) # эти два параметра будут тянутся из родительского класса
    @rank = rank
  end

  def yell
    "I am the boss"
  end

  def introduce 
    result = super
    result + " Hello! I am Manager."
  end
end
  
sally = Manager.new("Sally", 32, "Top Manager")
p sally.introduce # "Hi! My name is Sally and I am 32 years old Hello! I am Manager."







