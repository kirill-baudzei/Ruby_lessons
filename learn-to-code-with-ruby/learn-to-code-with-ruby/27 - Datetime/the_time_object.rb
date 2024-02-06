# time object

# Объект Time в Ruby представляет собой момент времени и содержит информацию о часах, минутах, секундах, днях, месяцах и годах. 
# Он часто используется для работы с временем и датами.

# Создание объекта Time можно выполнить несколькими способами. Вот некоторые из них:

# Создание с использованием метода Time.now:

current_time = Time.now
puts current_time # 2024-02-06 19:40:53 +0100
# Этот метод создает объект Time, представляющий текущий момент времени.


# Создание с использованием конструктора:
specific_time = Time.new(2022, 2, 14, 12, 30, 0)
puts specific_time  # 2022-02-14 12:30:00 +0100
# Здесь мы создаем объект Time, представляющий 14 февраля 2022 года в 12:30.


# Создание из строки с использованием метода Time.parse:
require 'time'
time_from_string = Time.parse('2022-02-14 15:45:00')
puts time_from_string # 2022-02-14 15:45:00 +0100
# Метод Time.parse распознает строку и создает объект Time соответствующий указанному времени.


# Объекты Time поддерживают различные методы для работы с датами и временем. Например:
some_time = Time.new(2023, 5, 12, 18, 43, 51)

puts some_time.year # выводит год
puts some_time.month # выводит месяц
puts some_time.day # выводит день
puts some_time.hour # выводит часы
puts some_time.min # выводит минуты
puts some_time.sec # выводит секунды
puts some_time.mday # выводит день месяца (12)
puts some_time.yday # выводит день года - 132
puts some_time.wday # выводит день недели (5)
puts some_time.monday? # проверяет какой день недели. возвращает boolean
puts some_time.friday? # true
