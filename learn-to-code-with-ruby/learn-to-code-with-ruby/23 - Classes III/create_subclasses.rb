# create subclasses
# создание подклассов

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

empl1 = Employee.new("Kirill", 21)
p empl1.introduce # "Hi! My name is Kirill and I am 21 years old"

class Manager < Employee # наследование всего из супер класса
end

class Worker < Employee
end

bob = Manager.new("Bob", 29)
p bob.introduce # "Hi! My name is Bob and I am 29 years old"

sky = Worker.new("Sky", 31)
p sky.introduce # "Hi! My name is Sky and I am 31 years old"

puts bob.class # Manager
puts sky.class # Worker

# наследуются так:
#  Superclass
#    /  \
#  Employee
#    / \
# Manager / Worker


