# override the == instance method to define object equality


# Переопределение метода == в Ruby позволяет определить равенство объектов.

class MyClass
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def ==(other)
    return false unless other.is_a?(MyClass)
    value == other.value
  end
end

obj1 = MyClass.new(42)
obj2 = MyClass.new(42)
obj3 = MyClass.new(99)

puts obj1 == obj2  # Вывод: true, так как значения совпадают
puts obj1 == obj3  # Вывод: false, так как значения различны
# В этом примере метод == переопределен в классе MyClass таким образом, что он сравнивает значения объектов этого класса. 
# При сравнении obj1 == obj2 результат будет true, так как у них одинаковые значения. 
# В случае obj1 == obj3 результат будет false, так как у них разные значения.

# Переопределение == позволяет более точно определить, когда два объекта считаются равными в контексте вашего приложения.




# EXAMPLE 2

class Icecream
  attr_reader :flavor, :calories, :price

  def initialize(flavor:, calories:, price:)
    @flavor = flavor
    @calories = calories
    @price = price
  end

  def ==(other)
    calories == other.calories && price == other.price
  end
end

cookies_and_cream = Icecream.new(flavor: "cookie and Cream", calories: 653, price: "6.5 $")
vanile = Icecream.new(flavor: "Vanile taste", calories: 450, price: "5 $")
mango = Icecream.new(flavor: "Mango taste", calories: 450, price: "5 $")

p cookies_and_cream == vanile # false
p cookies_and_cream == cookies_and_cream # true
p vanile == mango # true - так как совпадают calories и price. Работает наш кастомный метод ==
