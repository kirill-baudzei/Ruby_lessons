# A module is a "toolbox" of related classes, methods, and/or constants.
# Module organize functionality into containers, 
# similar to directories on your computer.
# Modules are not classes; we cannot create "instances" of a module.
# Модули в Ruby предоставляют механизм для группировки методов, констант и классов в пространство имен. 
# Они позволяют вам организовывать и структурировать код, делают его более чистым и избегают конфликтов имен.

module LengthConversions
  def self.miles_to_feet(miles)
    miles * 5280
  end
  
  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end
  
  def self.miles_to_centimers(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end
  
puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_inches(200)
puts LengthConversions.miles_to_centimers(300)


# пример 2
# Здесь Greetings - это модуль, содержащий два метода. 
# Класс MyClass включает этот модуль, и теперь объект этого класса может использовать методы из модуля.

module Greetings
  def say_hello
    puts "Hello!"
  end
  
  def say_goodbye
    puts "Goodbye!"
  end
end
  
class MyClass
  include Greetings
end
  
obj = MyClass.new
obj.say_hello  # Вывод: Hello!
  