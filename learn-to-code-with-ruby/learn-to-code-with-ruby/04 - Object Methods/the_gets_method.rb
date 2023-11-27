# метод gets - получает интежер

puts "Hi! What is your name?"
# name = gets # Boris\n добавляется разрыв строки при нажатии enter после ввода
name = gets.chomp #chomp обрезает лишние символы

puts "Your name is #{name}? Awesome!"

puts "Great! What is your age?"

age = gets.chomp
puts "Cool! Your name is #{name} and your age is #{age}"