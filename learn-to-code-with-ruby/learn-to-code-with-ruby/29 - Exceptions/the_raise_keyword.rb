# raise keyword


# Ключевое слово raise в Ruby используется для явного возбуждения исключения.
# Это позволяет программисту явно указать, что в определенных условиях должно быть выброшено исключение.

# Пример использования raise:

def divide(a, b)
  raise ArgumentError, "Cannot divide by zero" if b.zero?
  a / b
end

begin
  result = divide(10, 0)
rescue ArgumentError => e
  puts "Error: #{e.message}"
end
# В этом примере, если в методе divide второй аргумент равен нулю, вызывается raise ArgumentError, и программа переходит в блок rescue, 
# где выводится сообщение об ошибке.

# raise также может использоваться без аргументов для повторного возбуждения текущего исключения:

begin
  # код, который может вызвать исключение
rescue => e
  # обработка исключения
  raise # повторное возбуждение текущего исключения
end
# Это может быть полезно, если вы хотите обработать исключение, выполнить какой-то код, а затем снова возбудить исключение.




class Oven
  attr_accessor :state

  def initialize
    @state = "off"
  end

  def turn_on
    self.state = "on"
  end

  def bake(item)
    raise "Please turn the oven on first!" if state == "off"  
    puts "Baking #{item}"
  end
end

oven = Oven.new
oven.turn_on
oven.bake("Pepperoni Pizza") # Baking Pepperoni Pizza