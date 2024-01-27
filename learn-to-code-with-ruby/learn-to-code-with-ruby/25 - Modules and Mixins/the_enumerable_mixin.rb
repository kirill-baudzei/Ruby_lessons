# Миксин (Mixin) представляет собой модуль, который мы встраиваем (внедряем) в класс для добавления дополнительного функционала. 
# Это способ обеспечения совместного использования функционала между классами без объявления иерархии суперкласса/подкласса.

# Модуль Enumerable:
# Модуль Enumerable в Ruby предоставляет функционал для "итерации" по объекту. 
# Термин "итерация" означает последовательное перебирание элементов коллекции. 
# Модуль Enumerable автоматически определяет методы, такие как map, select, reject, any? и многие другие.

# Использование миксина Enumerable:
# Встроение модуля Enumerable в класс с использованием ключевого слова include.
# Определение метода each в классе.
# Пример:

class MyClass
  include Enumerable

  def initialize(data)
    @data = data
  end

  def each
    @data.each { |item| yield item }
  end
end

my_object = MyClass.new([1, 2, 3, 4, 5])

my_object.each { |item| puts item }  # Итерация по объекту
puts my_object.map { |item| item * 2 }  # Применение метода из Enumerable
# Модуль Enumerable обеспечивает удобные методы для работы с коллекциями, делая классы более гибкими и переиспользуемыми.



# A mixin describes a module that we inject into a class to add
# additional behavior. It's a way to share functionality
# between classes without declaring a superclass/subclass hierarchy.
#
# Enumerable module - enables "iteration" for our object
# Enumerable - adjective - able to be counted by one-to-one 
# Automatically defines methods like map, select, reject, any?, and more
#
# 1) Mix in the Enumerable module with the include keyword
# 2) Define an 'each' method

class Refrigerator
  include Enumerable

  attr_reader :snacks, :drinks

  def initialize(snacks:, drinks:)
    @snacks = snacks
    @drinks = drinks
  end

  def items
    snacks + drinks
  end

  def each
    items.each { |item| yield item }
  end
end

fridge = Refrigerator.new(
  snacks: ["Doritos", "Jolly Ranchers", "Ben & Jerry's Ice Cream"],
  drinks: ["Pepsi", "Coke", "Gatorade"]
)

fridge.each { |item| puts "#{item} is delicious" }
p fridge.sort # ["Ben & Jerry's Ice Cream", "Coke", "Doritos", "Gatorade", "Jolly Ranchers", "Pepsi"]
p fridge.any? { |item| item.length > 10 } # true
p fridge.all? { |item| item.length < 25 } # true
p fridge.map { |item| item.upcase } # ["DORITOS", "JOLLY RANCHERS", "BEN & JERRY'S ICE CREAM", "PEPSI", "COKE", "GATORADE"]
p fridge.select { |item| item.downcase.include?("j") } # ["Jolly Ranchers", "Ben & Jerry's Ice Cream"]
p fridge.reject { |item| item.upcase.include?("B") } # ["Doritos", "Jolly Ranchers", "Pepsi", "Coke", "Gatorade"]