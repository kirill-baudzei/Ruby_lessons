class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end
    
  def information
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

  def to_s
    "Whatever"
  end
end
    
guitar = Guitar.new
p guitar.information # метод из класса

p guitar.to_s # "#<Guitar:0x00000203112e1e98>" - string ом выводит информацию о расположении объекта класса в памяти
# после того как добавили метод в класс, то выводит "Whatever"

puts guitar # Whatever
