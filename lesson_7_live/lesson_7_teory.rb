# ООП и про них
# можем создать параметры характерные классу
# возраст
# кличка и тд
class Animal # константы начинаются с большой буквы
  # LEGS_COUNT = 4 # константа
  # @@legs_count = 4 #  В Ruby символ @@ используется для определения и работы с переменными класса. Переменные класса общие для всех экземпляров класса, и они начинаются с символа @@. От них стараются отходить

  # переменные образца класса (instance variables)

  # тело класса
  # описываем атрибуты которые есть у животных + методы и функции которые они могут реализовывать . Делается через initialize
  def initialize(name, age) # метод , который вызывается при создании нового животного
    # name - это переменная (аргумент метода), которая существует только пока работает сам метод
    @name = name # мы для того животного которое создали - мы сохраняем его ЛИЧНОЕ ИМЯ
    # переменная образца класса
    @age = age # переменная образца класса
  end

  def age # это метод , который сообщает возраст животного
    # puts "Мне #{@age} лет"
    return @age
    # любые строки кода после return не выполнятся В РАМКАХ ДАННОГО МЕТОДА . return - значит метод отработал и возвращает значние переменной
  end

  def age=(new_age) # это метод от присваивания animal1.age = 4...... по факту age = есть метод age=
    @age = new_age
  end
  # создаем еще один метод
  # def birthday
  #   @age = @age + 1
  # end
end

# мы можем переоткрывать уже существующий класс и менять его методы например class String def downcase и изменить действия данного метода на что угодно

# порождаем образец (экземпляр) этого класса
animal1 = Animal.new "Kotopes", 6 # создается новое животное в классе через метод new и запускается метод initialize. можно и со скобками и без.
animal2 = Animal.new("Pesokot", 15)

# animal1.new_age(4)

# animal1.birthday() - метод для добавления + к возрасту
# animal1.age = 4
# это вызов метода
# animal1.age
# animal2.age

animal1_age = animal1.age
animal2_age = animal2.age
puts "Возраст животного номер 1 = #{animal1_age} лет"
puts "Возраст животного номер 1 = #{animal2_age} лет"