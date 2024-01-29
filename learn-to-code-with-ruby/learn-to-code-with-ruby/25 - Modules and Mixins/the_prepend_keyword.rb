# prepend - verb - to add something to the beginning of something else
#
# prepend keyword - add the mixin's methods before the instance method
# in the lookup order

module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  prepend Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

bn = Bookstore.new
p bn.purchase("Goosebumps") # "Goosebumps has been purchased!"
p Bookstore.ancestors # [Purchaseable, Bookstore, Object, Kernel, BasicObject]


# prepend в Ruby:
# Определение: prepend - это ключевое слово в Ruby, используемое в контексте модулей и миксинов.

# Использование:
# prepend добавляет модуль в начало цепочки поиска методов.
# Методы из модуля, добавленного с помощью prepend, имеют приоритет перед методами в классе или других модулях.
# Пример:

module MyModule
  def greet
    puts "Hello from MyModule!"
  end
end

class MyClass
  prepend MyModule

  def greet
    puts "Hello from MyClass!"
  end
end

obj = MyClass.new # благоодаря pretend , mymodule будет работать в приоритете
obj.greet
# Результат:
# Hello from MyModule!
# Когда использовать:

# Когда необходимо, чтобы методы из модуля имели приоритет над методами в самом классе.
# Полезно для изменения поведения класса с помощью модулей, при этом сохраняя возможность вызова методов из самого класса.