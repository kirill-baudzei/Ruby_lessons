# 1. принять ввод с клавы возраста
# 2. сравнить возраст с 18
# Если возраст больше 18 - то сказатьб ДОСТУП ОТКРЫТ
# Если возраст меньше 18 - то сказать доступ  закрыт

puts "Введите ваш возраст"

age = gets.to_i

puts "Введите Вашу страну. 1 - Япония, 2 - США, 3 - остальные"
country = gets.to_i
# если страна Сша или Япония то проверяем на 21 год - все остальные с 18 годами

if  (country == "1" || country == "2") && age >=21 
    puts "Доступ открыт"
elsif (country != "1" && country != "2") && age >=18
    puts "Доступ открыт для любой страны, кроме США и Японии"
else
    puts "доступ закрыт для всех стран"
end

# в одну строку можно было бы так if (>=21) || (age >=18 && country !=1 && country !=2)