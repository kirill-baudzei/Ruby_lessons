# public methods - can be invoked by any other object
#
# private methods - can only be invoked by internal methods
#
# protected methods - can only be invoked by internal methods or
# objects of the same class

# В Ruby public, protected и private — это модификаторы доступа для методов в классе.

# Public (публичные) методы:
# Доступны извне объекта.
# Могут быть вызваны из любого места, как изнутри самого объекта, так и извне.


# Protected (защищенные) методы:
# Не могут быть вызваны извне объекта, кроме случаев, когда объекты принадлежат одному классу или его подклассу.
# Методы, объявленные после protected, считаются защищенными.

class Car

  def initialize(age, miles)
    base_value = 20_000
    age_deduction = age * 1000
    miles_deduction = miles / 10
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is better" : "Your car is worse"
  end
  
  protected # метод ниже работает для методов и экземпляров класса

  def value
    @value
  end
end

civic = Car.new(5, 60_000)
fiat = Car.new(3, 100_000)
doge = Car.new(3, 40_000)

puts civic.compare_car_with(fiat) # Your car is better
puts civic.compare_car_with(doge) # Your car is worse
# puts civic.value - в этом случае метод не работает
