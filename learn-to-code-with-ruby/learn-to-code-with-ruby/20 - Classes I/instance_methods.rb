# Encapsulation refers to a design paradigm where we restrict
# direct access to an object's data. Instead, we use methods
# to access and write that data, which hides away the complexity
# of the implementation and reduces the chance of bugs
#
# Example: Microwave

# instance methods в Ruby - это методы, которые принадлежат конкретному объекту класса. 
# Они могут работать с инстанс-переменными этого объекта и выполнять операции, 
# специфичные для конкретного экземпляра класса. 
# Instance methods вызываются на объекте класса и могут взаимодействовать с его состоянием.

class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end
  
  def information
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end
end
  
guitar = Guitar.new
p guitar.information # метод из класса
  
# p information
# p guitar.informatio
# p Guitar.information
  
# class String
#   def upcase
#   end
  
#   def split
#   end
  
#   def includes?
#   end
# end