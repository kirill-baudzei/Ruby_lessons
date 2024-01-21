# переписывания методов в сабклассов. то есть создается параметр - с таким же названием

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
  def yell
    "I am the boss"
  end
  # пример
  def introduce # МЕТОД РАБОТАЕТ ПРИОРИТЕТНО, ТАК КАК ПЕРЕПИСАН В САБКЛАССЕ
    "Hello! I am Manager. My name is #{name}"
  end
end
      
class Worker < Employee
  def clock_in(time)
    "Starting shift at #{time}"
  end
  
  def yell
    "I am working!!!"
  end
end

sally = Manager.new("Sally", 32)
p sally.yell # "I am the boss"
p sally.introduce # "Hello! I am Manager. My name is Sally"
  
  