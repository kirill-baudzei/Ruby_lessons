# метод step

1.step(100, 33) { |number| puts "#{number}" }# в отличии от upto добавляем второй аргумент, который определяет шаг
# выводит  1  34  67  100

1.step(50, 7) do |number|
    puts "Alright, let's go up by 7!"
    puts "I'm now on #{number}" # добавляет от 1 до 50 по 7...
  end