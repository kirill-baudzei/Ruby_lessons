# add or subtract time

# В Ruby, для добавления или вычитания времени от объекта Time используются методы + и -. 
# Эти методы позволяют прибавлять или вычитать определенное количество секунд к текущему времени.

# Пример добавления и вычитания времени:

current_time = Time.now

# Добавление 10 минут
future_time = current_time + 600

puts "Текущее время: #{current_time}"
puts "Время через 10 минут: #{future_time}"

# Вычитание 1 часа
past_time = current_time - 3600

puts "Текущее время: #{current_time}"
puts "Время 1 час назад: #{past_time}"