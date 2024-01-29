# the comparable mixin

# Миксин Comparable:

# Миксин Comparable в Ruby предоставляет возможность сравнения объектов на основе их значений. 
# Этот миксин позволяет классу использовать операторы сравнения (<, <=, ==, >=, >) и методы, такие как between? и clamp.

# Краткое описание:
 
#  * Миксин Comparable требует реализации метода <=> (spaceship operator) в классе, который возвращает -1, 0 или 1 в зависимости от того, 
# меньше ли, равно ли или больше объект, с которым он сравнивается.

#  *После реализации метода <=>, класс получает автоматическую функциональность сравнения.

# Пример использования:

class MyClass
  include Comparable

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def <=>(other)
    @value <=> other.value
  end
end

obj1 = MyClass.new(10)
obj2 = MyClass.new(20)

puts obj1 < obj2  # true
puts obj1 == obj2 # false
puts obj1 > obj2  # false
# В этом примере класс MyClass может использовать операторы сравнения после включения миксина Comparable и реализации метода <=>.

# The Comparable module/mixin enables us to "compare" our objects.
# In previous sections, we saw how to declare basic equality
# by overriding the == instance method. But Comparable expands that
# by granting access to many comparison methods (<, <=, >, >=, ==, etc)
#
# 1) Mix in the Comparable module with the include keyword
# 2) Define an '<=>' (spaceship operator) method
#
# Spaceship operator method 
# Return -1 if current item is less than other item
# Return 0 if two items are equal
# Return 1 if current item is greater than other item


# пример препода
class OlympicMedal
  include Comparable

  attr_reader :type

  def initialize(type:)
    @type = type
  end

  def <=>(other)
    medal_values = { gold: 3, silver: 2, bronze: 1 }
    current_medal_value = medal_values[type] # number
    other_medal_value = medal_values[other.type] # number

    if current_medal_value < other_medal_value
      -1
    elsif current_medal_value == other_medal_value
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new(type: :bronze)
silver = OlympicMedal.new(type: :silver)
gold = OlympicMedal.new(type: :gold)

puts bronze > silver # false
puts bronze < gold # true
puts bronze.<(gold) # true
puts gold > bronze # true 
puts silver <= gold # true
puts bronze >= gold # false
puts bronze == gold # false
puts silver != gold # true
puts silver.between?(bronze, gold) # true