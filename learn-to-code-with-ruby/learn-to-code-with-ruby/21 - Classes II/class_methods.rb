# Class method - method invoked on the class rather than an instance
# Class methods can be called on a class even if instances don't exist
# Class methods - вызываются и работают на сам класс.
# пример - Class.new - New - метод класса. class methods

class Venicle

  puts self # Venicle

  def self.hello # метод работающий на класс, а не на его экземпляр
    puts "I am class method"
  end
end

Venicle.hello # I am class method

class Auto
  attr_reader :wheels, :passengers

  def initialize(wheels, passengers)
    @wheels = wheels
    @passengers = passengers
  end

  def self.car
    self.new(4, 6)
  end

  def self.truck
    self.truck(8, 2)
  end
end

Auto.new(4, 6)
Auto.new(4, 8)
Auto.car # по методу car создает экземпляр с параметрами (4, 6)
Auto.truck # по методу truck создает экземпляр с параметрами (8, 2)



