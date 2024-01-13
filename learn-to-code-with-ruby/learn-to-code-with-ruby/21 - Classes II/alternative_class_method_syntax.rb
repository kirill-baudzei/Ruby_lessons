# другой метод для создании методов для класса

class Vehicle
  class << self # начинается так и заканчивается с end. Все методы внутри этого тела будут работать на сам класс только
    def car
      new(4, 6)
    end
    
    def truck
      new(18, 2)
    end
  end
  
  attr_reader :wheels, :passengers
  
  def initialize(wheels, passengers)
    @wheels = wheels
    @passengers = passengers
  end
end
  
car = Vehicle.car
p car.wheels # 4
p car.passengers # 6
  
truck = Vehicle.truck
p truck.wheels # 18
p truck.passengers # 2