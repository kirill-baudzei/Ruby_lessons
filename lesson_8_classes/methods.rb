class Cat
  attr_reader :age

  # метод образца класс (instance method)
  def initialize(age)
    @age = to_cat_years(age)
  end

  def age=(new_age)
    @age = new_age
  end

  def birthday
    puts "Мой текущий возраст #{self.age}"
    self.age = self.age + 1
    puts "Мой новый возраст #{self.age}"
  end

  # метод класса
  # def Cat.speak # метод создается на всем классе. Позволяет сделать общую настройку и все такое. self.speak - тоже самое
  def self.speak # self указывает на текущий обьект (где выполняется программа)
    puts "meooow!"
  end

  def sample(*args) # аргумент со звездочкой - означает что сколько угодно значений можно принять
    puts args.inspect # выходит массив из этого animal1.sample 40, 10, 'test', test: :HI!
  end

  private

  def to_cat_years(human_age) # служебный метод только внутри класса. метод не доступент для рабты из вне
    human_age / 4
  end
  # тут тоже все методы будут приватными. Это частично инкапсуляция ..
end

animal1 = Cat.new 40
animal1.birthday

animal2 = Cat.new 60
animal2.birthday

animal1.sample 40, 10, 'test', test: :HI!

# puts animal.to_cat_years(100)

# Cat.speak