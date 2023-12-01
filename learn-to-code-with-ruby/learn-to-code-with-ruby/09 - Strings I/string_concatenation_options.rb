# string_concatenation_options
# объединение стрингов

first_name = "Kirill"
last_name = "Baudzei"

puts first_name + last_name # соединяет по порядку и выводит но без пробела
puts last_name + first_name

# first_name - first_name + last_name # переназначаем переменную сразу с целым значением
# first_name += last_name
# puts first_name

# first_name.concat(last_name) # меняет значение переменной first_name и добавляет к ней атрибут в скобках
# # модицированная переменная выводит полное значение
# puts first_name

first_name.prepend(last_name) # в таком случае метод prepend добавляет переменной first_name свое значение перед текстом
puts first_name #  выведет BaudzeiKirill

# Shovel operator << модифицирует переменную

master = "Oppenheimer"
master << " Robert" << "The Best" # как и метод concat модицифирует переменную и наш string

puts master





