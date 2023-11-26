# Типы данных
# целые числа (integer) 3, 1000
# дробные (floats) 3.15
# strings - строки "Машина" или 'Кирилл'

# операции с числоами
# moneta = '3'.to_i + '5'.to_i
# puts moneta

# mile = 1.4 km
# Принять ввод с клавы величины в миля
# конвертировать мили в КМ
# 3 вывести результат
puts 'Введите значение в киллометрах'
user_input_in_km = gets
result_in_km = user_input_in_km.to_f / 1.4
puts "значение в милях: #{result_in_km}"