class Animal
  attr_accessor :name, :age 

  def initialize(name, age) # расскатится на все дочерние классы
    @name = name
    @age = age
  end

  def speak
    puts "это просто общий класс для животных!"
  end
end

class Dog < Animal # возьми и унаследуют методы от класса Animal
  def speak # переопределение метода родителя (класс Animal)
    puts "WOOF!"
  end

  def eat(amount)
    if amount > 0.5
      puts "Я столько не сьем"
    else
      puts "Вкусно!"
    end
  end
end

class SmallDog < Dog # наследует все из класса Dog и из класса Animal
end

class Cat < Animal
  def eat(amount)
    if amount > 0.3
      puts "Я столько не сьем"
    else
      puts "Вкусно!"
    end
  end
end

dog = Dog.new "Sccoby", 10
dog.speak # тут вызывается метод класса Dog
puts dog.name

# animal = Animal.new # тут вызывается метод класса Animal - родительского
# animal.speak

cat = Cat.new "Garfild", 15 # так как в Cats метод не переназначен - то будет метод от родительского класса
cat.speak
