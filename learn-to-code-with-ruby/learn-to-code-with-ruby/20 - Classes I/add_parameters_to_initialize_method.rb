class Guitar
  attr_reader :type, :wood, :strings
  attr_accessor :price
  
  def initialize(type, wood, strings, price) # переменные экземпляра класса, которые хотим задавать при создании
    @type = type # назначаем каждый параметр. нужно будет задавать их при создании нового экземпляра класса
    @wood = wood
    @strings = strings
    @price = price
  end
  
  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end
end
  
sound_viking_2000 = Guitar.new("Acoustic", "Mahogany", 6, 1000) # передаем все параметры из initialize
thunderstorm = Guitar.new("Electric", "Alder", 7, 2400)
  
p sound_viking_2000.type
p sound_viking_2000.wood
p sound_viking_2000.strings
p sound_viking_2000.price
p sound_viking_2000.to_s # "An Acoustic Mahogany guitar with 6 strings."

p thunderstorm.type
p thunderstorm.wood
p thunderstorm.strings
p thunderstorm.to_s # "An Electric Alder guitar with 7 strings."
