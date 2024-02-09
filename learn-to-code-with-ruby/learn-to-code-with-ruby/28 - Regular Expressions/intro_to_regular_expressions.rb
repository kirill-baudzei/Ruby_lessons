# regular expressions - a search pattern for text
# Регулярные выражения (Regular Expressions или Regex) в Ruby представляют собой мощный инструмент для работы с текстом. 
# Они используются для поиска, сопоставления и манипуляций с текстовыми данными на основе определенных шаблонов. 
# В Ruby работа с регулярными выражениями поддерживается встроенным классом Regexp.

phrase = "The Ruby Programming Language is amazing!"

p phrase.include?("Pro") # true
p phrase.start_with?("The") # true
p phrase.end_with?("zing!") # true

puts

p /T/.class  # Regexp
p phrase =~ /P/
p /P/ =~ phrase
p phrase =~ /R/
p phrase =~ /r/
p phrase =~ /m/
p phrase =~ /x/
p phrase =~ /!/
p phrase =~ /by/
p phrase =~ /ang/
p phrase =~ /ing!/

# Создание Регулярного Выражения:
regex = /pattern/


# Поиск и Сопоставление:
text = "Hello, World!"
if text =~ /Hello/
  puts "Match found!"
end


# Использование Методов String:
text = "Hello, World!"
match = text.match(/(\w+), (\w+)!/)
puts match[1]  # "Hello"
puts match[2]  # "World"


# Модификаторы:
# Регулярные выражения в Ruby могут использовать модификаторы, например, i для игнорирования регистра:
regex = /pattern/i


# Замена и Манипуляции:
text = "Hello, World!"
modified_text = text.gsub(/Hello/, "Hi")


# Ключевые Символы:

# .: Любой символ, кроме новой строки.
# ^: Начало строки.
# $: Конец строки.
# []: Одно из указанных символов.
# |: Логическое ИЛИ.
# *, +, ?: Операторы повторения (ноль или более, один или более, ноль или один).