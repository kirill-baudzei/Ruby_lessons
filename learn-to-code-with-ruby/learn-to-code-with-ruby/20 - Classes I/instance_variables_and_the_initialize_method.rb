# Instance variables are variables that belong to an object.
# They are "data" that belongs to the object.
# They hold information on the object's current state.
#
# Instance variables begin with an @ symbol. Without the
# symbol, Ruby interprets a variable as a local variable.
#
# Ruby calls a special, private "initialize" method when an object is
# instantiated from a class. The initialize method offers a
# perfect place to create instance variables and assign them
# starting values.
#
# If we do not define an "initialize method", the object is
# initialized without state (like in the previous lesson.)
#
# The instance variable values do not have to stay constant.
# We can alter the object's state later.

# Instance variables в Ruby - это переменные, которые принадлежат конкретному объекту класса. 
# Они начинаются с символа @ и могут быть использованы в любом методе внутри этого класса. 
# Instance variables обеспечивают уникальное состояние для каждого объекта класса, 
# и их значения могут быть доступны и изменены внутри методов этого класса.

# initialize в Ruby - это специальный метод в классе, который вызывается при создании нового объекта данного класса. 
# Этот метод позволяет устанавливать начальные значения для инстанс-переменных объекта. 
# Обычно в методе initialize устанавливаются значения для тех переменных, которые объект должен иметь 
# с самого начала своего существования. 
# Таким образом, initialize выполняет функцию конструктора объекта в Ruby.

class Guitar
  def initialize 
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @colors = ["Black", "Gold"]
  end
end
  
guitar_1 = Guitar.new
guitar_2 = Guitar.new
  
p guitar_1 # #<Guitar:0x000002a33abd6548 @type="Acoustic", @wood="Alder", @strings=6, @colors=["Black", "Gold"]>
p guitar_2 # #<Guitar:0x000001b21be96500 @type="Acoustic", @wood="Alder", @strings=6, @colors=["Black", "Gold"]>
