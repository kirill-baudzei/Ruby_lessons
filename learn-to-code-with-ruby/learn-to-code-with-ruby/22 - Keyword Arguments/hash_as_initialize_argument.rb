# Keyword arguments - allow invocation of a method to specify which
# parameters the arguments correspond to

class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace
  
  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end
end
  
senator = Candidate.new(
  hobby: "Fishing",
  name: "Mr. Smith",
  age: 53,
  birthplac: "Kentucky"
)

p senator.hobby
p senator.birthplace


# В Ruby, keyword arguments в классе позволяют явно указать именованные параметры при создании экземпляра объекта. 
# Это предоставляет более ясный и гибкий способ передачи аргументов в конструктор класса.

# Пример использования keyword arguments в классе:

class MyClass
    attr_reader :name, :age, :job

  def initialize(name:, age:, job:)
    @name = name
    @age = age
    @job = job
  end

  def display_info
    puts "Name: #{@name}, Age: #{@age}"
  end
end

# Создание объекта с использованием keyword arguments
my_object = MyClass.new(name: "John", age: 30, job: "Doctor")

# Вызов метода объекта
my_object.display_info
p my_object.job # "Doctor"
# Здесь initialize принимает два обязательных параметра (name и age), указанных как keyword arguments. 
# При создании объекта MyClass, аргументы передаются явно с использованием ключевых слов, 
# что делает код более читаемым и удобным для сопровождения.