# mixing in our own module 

# Use inheritance when the relationship is an "is-a" relationship.
# A Car is a type of Vehicle.
# Use modules/mixins when the relationship is a "has-a" relationship.
# A Car is Towable, Purchaseable, Crushable
# We can mix in multiple modules but only inherit from 1 superclass.

# Наследование и Миксины в Ruby:
# Наследование (Inheritance):
# Когда использовать: В отношениях "является" ("is-a"). Например, "Машина является видом Транспортного средства".
# Описание: Позволяет классу наследовать свойства и методы от другого класса (родительского). 
# Родительский класс называется суперклассом, а дочерний - подклассом.

# Миксины (Modules/Mixins):
# Когда использовать: В отношениях "имеет" ("has-a"). Например, "Машина может быть буксируемой, покупаемой, раздавленной".
# Описание: Позволяет классу включать функциональность из одного или нескольких модулей. Класс может включать несколько модулей, 
# но наследоваться только от одного суперкласса.

module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable
end

class Supermarket
  include Purchaseable
end

class Bodega < Supermarket
end

bookstore = Bookstore.new
supermarket = Supermarket.new
bodega = Bodega.new

puts bookstore.purchase("Animal Farm")
puts supermarket.purchase("Ice Cream")
puts bodega.purchase("Slim Jim")
