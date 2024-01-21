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
p sally.introduce # "Hi! My name is Sally and I am 32 years old"

# метод из суперкласса introduce работает для обоих сабклассов

chuck = Worker.new("Chuck", 53)
p chuck.clock_in("8:30 AM") # "Starting shift at 8:30 AM"
p chuck.introduce # "Hi! My name is Chuck and I am 53 years old"
p chuck.yell # "I am working!!!"
