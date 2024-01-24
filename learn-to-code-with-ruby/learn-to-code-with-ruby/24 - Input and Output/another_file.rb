puts "I am in the other file"

def some_method
  "I'm some method"
end

p some_method # "I'm some method"

class Table
  attr_reader :material
  def initialize(material:)
    @material = material
  end
end

desk = Table.new(material: "wooden")
p desk.material # "wooden"
