# создание Istance переменной в классе - дз
# Declare a Musical class that includes "name",
# "cast", and "duration" instance variables.
# Feel free to initialize the instance variables
# to whatever values you'd like.
class Musical
  def initialize
    @cast = "Electronic"
    @duration = 4
    @sound = "Noizy"
    @name = "Rap"
    @clubs = ["warsaw", "Minsk"]
  end
end

p vlkkk = Musical.new # <Musical:0x00000283100dcc18 @cast="Electronic", @duration=4, @sound="Noizy", @name="Rap", @clubs=["warsaw", "Minsk"]>
p dfb_dj = Musical.new # <Musical:0x00000283100dcbc8 @cast="Electronic", @duration=4, @sound="Noizy", @name="Rap", @clubs=["warsaw", "Minsk"]>
