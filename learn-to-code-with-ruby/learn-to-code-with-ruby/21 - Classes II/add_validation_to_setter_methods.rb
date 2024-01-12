class Smartphone
  attr_reader :usernanme, :production_number, :password
  
  def initialize(username, password)
    @username = username
    @password = password
    @production_number = self.generate_production_number
  end

  def password=(password)
    @password = password if valid_password?(password)
  end
  
  private # все что ниже - приватно. Нельзя использовать вне класса!
  
  def generate_production_number
    random_number = rand(10_000...99_999)
    another_rand_num = rand(10_000...99_999)
    "2023-#{random_number}-#{another_rand_num}"
  end

  def valid_password(password)
    password.length >= 6
  end
end
  
phone = Smartphone.new("Rubyphone123", "Qwerty1")
p phone.production_number

# phone.password = "programming"
# p phone.password

# phone.password = "small" # Не изменится, так как меньше 6 символов
# p phone.password
