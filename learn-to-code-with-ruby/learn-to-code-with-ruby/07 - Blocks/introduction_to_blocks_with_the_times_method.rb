# blocks  - блоки

# argument - объект, конкретное значение
# block - процедура, коллекция кода

# блок создается либо через { } для одной строки
5.times { puts "Ruby is fucking awesome"} # выведет этот блок 5 раз! то что в скобках {} - это блок


# Либо блок создается через do ..... end

3.times do # в рамках блока выведет эти строки 3 раза
  puts "Love Ruby"
  puts "I want to develop on Ruby"
end

value = 2.times do
  puts "Ruby is cool"
end

puts value # выведет и дважды Ruby is cool и так же 2. тк в переменной value лежит integer 2

