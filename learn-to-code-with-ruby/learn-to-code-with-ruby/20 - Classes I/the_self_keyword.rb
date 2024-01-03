# Ключевое слово self в Ruby используется для обращения к текущему объекту или текущему контексту. 
# В контексте классов self обычно указывает на сам класс.

# В методах экземпляра:

# Внутри метода экземпляра, self ссылается на текущий объект. 
# Это позволяет вам обращаться к переменным экземпляра и вызывать другие методы объекта.

class MyClass
  def instance_method
    puts "Inside instance_method for #{self}"
  end
end

obj = MyClass.new
obj.instance_method
# Output: Inside instance_method for #<MyClass:0x0000000001eabf48>


# В методах класса:
# Внутри методов класса self ссылается на сам класс. Это позволяет обращаться к методам класса и переменным класса.

class MyClass
  @@class_variable = "I am a class variable"

  def self.class_method
    puts "Inside class_method for #{self}"
    puts @@class_variable
  end
end

MyClass.class_method
# Output: Inside class_method for MyClass
#         I am a class variable



# Внутри класса:
# Вне зависимости от контекста, внутри класса self ссылается на сам класс.
class MyClass
  puts "Inside the class definition: #{self}"
end
# Output: Inside the class definition: MyClass


# В методах класса и экземпляра:
# В методах класса и экземпляра self также может использоваться для вызова других методов класса.
class MyClass
  def instance_method
    self.class.class_method
  end

  def self.class_method
    puts "Inside class_method for #{self}"
  end
end

obj = MyClass.new
obj.instance_method
# Output: Inside class_method for MyClass
# Использование self зависит от контекста, и его правильное использование обеспечивает четкость и понимание кода.




class Computer

  puts "Inside Guitar class: #{self}" # Inside Guitar class: Computer
  def initialize
    @cpu = 'Intel i7' # переменные экземпляра класса 
    @memory = 64
    @storage = '2 TB'
  end
  
  def to_s
    "A powerful #{@cpu} computer with #{@memory}GB memory and #{@storage} of storage"
  end

  def details
    puts "Inside details instance : #{self}"
  end
end
  
my_comp = Computer.new
puts my_comp
my_comp.details # Inside details instance : A powerful Intel i7 computer with 64GB memory and 2 TB of storage
# тут self выводит текст метода выше\



class Guitar
  puts "Inside Guitar class: #{self}"
  
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end
  
  # def to_s
  #   "An #{@type} #{@wood} guitar with #{@strings} strings."
  # end
  
  def details
    puts "Is it nil? #{self.nil?}. It is made from the #{self.class} class."
  end
end

new_git = Guitar.new
new_git.details # Is it nil? false. It is made from the Guitar class.
