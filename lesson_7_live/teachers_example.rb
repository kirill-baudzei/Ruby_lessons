class Animal
    attr_accessor :age # В приведенном выше примере attr_accessor :name, :age автоматически создает методы name и name= для чтения и записи значения переменной экземпляра @name, а также методы age и age= для переменной @age.
    attr_reader :name, :age # метод только для чтения!
    attr_writer :name, :age # метод для изменения!

    def initialize(name, age) # метод, который вызывается при создании нового животного
      @name = name
      @age = age
    end
  end
  
  # Порождаем образец (экземпляр) этого класса
  animal1 = Animal.new "Kotopes", 3 # создаём новое животное и запускаем метод initialize
  animal2 = Animal.new("Pesokot", 10)
  
  puts animal1.age
  # animal2.name = "NEW PESOKOT"
  puts animal2.name