# convert time object to formatted string

# Reference

# %b - Abbreviated month name ("Jan")
# %B - Full month name ("January")
# %d - Day of the month (1..31)
# %j - Day of the year (1..366); so-called "Julian date"
# %m - Month as a number (1..12)
# %w - Day of the week as a number (0..6)
# %x - Preferred representation for date (no time)
# %y - Two-digit year (no century)
# %Y - Four-digit year

someday = Time.new(2025, 3, 31)
 
puts someday.to_s # 2025-03-31 00:00:00 +0200

puts someday.strftime("%Y/%m/%d") # 2025/03/31
puts someday.strftime("%m/%d/%Y") # 03/31/2025
puts someday.strftime("%Y %m %d") # 2025 03 31
puts someday.strftime("%B %d, %Y") # March 31, 2025

# В Ruby, чтобы преобразовать объект Time в отформатированную строку, можно использовать метод strftime (строковый формат времени). 
# Этот метод принимает строку формата времени и возвращает строку, представляющую указанный формат времени.

# Пример:

current_time = Time.now

# Преобразование времени в строку с форматом "ГГГГ-ММ-ДД ЧЧ:ММ:СС"
formatted_time = current_time.strftime("%Y-%m-%d %H:%M:%S")

puts "Текущее время в формате строки: #{formatted_time}" # Текущее время в формате строки: 2024-02-06 20:21:45
# В этом примере %Y, %m, %d, %H, %M и %S - это коды форматирования, представляющие год, месяц, день, час, минуту и секунду соответственно. 
# Метод strftime поддерживает различные коды форматирования для представления различных частей времени.