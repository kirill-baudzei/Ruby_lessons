# parse and strptime methods
# Создание из строки с использованием метода Time.parse:
require 'time' # - это обязательно при работе с парсингом
time_from_string = Time.parse('2022-02-14 15:45:00')
puts time_from_string # 2022-02-14 15:45:00 +0100
# Метод Time.parse распознает строку и создает объект Time соответствующий указанному времени.

puts Time.parse("03-04-2023")
# March 4th, 2023
# April 3rd, 2023

puts
date = Time.strptime("03-04-2023", "%m-%d-%Y")
puts date # в методе strptime первый аргмент - string , второй - формат парсинга стрига.
# 2023-03-04 00:00:00 +0100

puts formated_date = date.strftime('%B-%d-%Y')

