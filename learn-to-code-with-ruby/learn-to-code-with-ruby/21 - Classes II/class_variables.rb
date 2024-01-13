# Class variable - data that lives on a class rather than an instance

# Class variable в программировании относится к переменной, которая принадлежит всему классу в целом, а не экземпляру класса. 
# Она общая для всех объектов этого класса и может быть доступна и изменена из любого экземпляра этого класса. 
# Переменная класса объявляется внутри класса, но вне методов. Изменения, внесенные в переменную класса, 
# будут видны всем экземплярам этого класса.

class Bycycle

  @@count = 0 # переменная класса

  def self.count
    @@count
  end

  def initialize
    @@count += 1
  end

  def count
    @@count
  end
end

p Bycycle.count # 0
b1 = Bycycle.new
Bycycle.new
Bycycle.new
p Bycycle.count # 3
p b1.count # 3
