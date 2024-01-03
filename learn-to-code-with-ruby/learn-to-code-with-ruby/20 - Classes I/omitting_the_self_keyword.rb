class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end
    
  # def to_s
  #   "An #{@type} #{@wood} guitar with #{@strings} strings."
  # end

  def details # МЕТОД ВОЗЬМЕМ ДВА МЕТОДА НИЖЕ И ВОСПРОИЗВЕДЕТ ИХ НА НОВОЙ ОБЪЕКТЕ КЛАССА
    self.nil_details # можно записать без self
    self.class_details
  end

  def nil_details
    puts "Is it nil? #{self.nil?}"
  end

  def class_details
    puts "It is made from the #{self.class} class."
  end
end
  
new_git = Guitar.new
new_git.details
# Is it nil? false
# It is made from the Guitar class.