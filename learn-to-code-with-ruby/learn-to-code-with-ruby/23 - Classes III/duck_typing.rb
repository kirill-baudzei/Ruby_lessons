# duck typing 

class Icecream
  attr_reader :flavor, :calories, :price
  
  def initialize(flavor:, calories:, price:)
    @flavor = flavor
    @calories = calories
    @price = price
  end
  
  def ==(other)
    calories == other.calories && price == other.price
  end
end
  
cookies_and_cream = Icecream.new(flavor: "cookie and Cream", calories: 653, price: "6.5 $")
vanile = Icecream.new(flavor: "Vanile taste", calories: 450, price: "5 $")
mango = Icecream.new(flavor: "Mango taste", calories: 450, price: "5 $")
  
p cookies_and_cream == vanile
p cookies_and_cream == cookies_and_cream 