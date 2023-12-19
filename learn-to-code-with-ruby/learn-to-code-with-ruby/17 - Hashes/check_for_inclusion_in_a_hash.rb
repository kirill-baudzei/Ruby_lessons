# Check for inclusion in a hash
#
# The include? method checks among the hash's keys
# The key? and has_key? methods check among the hash's keys
# The value? and has_value? methods check among the hash's values

# include? - проверяет ключи хэша
# key? has_key? проверяет ключи хэша
# value? has_value? - проверяет значения хэша

cars = { mitsubisi: "lancer", toyota: "Selica", ford: "Mustang", kia: "Rio" }

p cars.include?(:toyota) # true, так как есть такой ключ. Это ключ - символ
p cars.include?("toyota") # false
p cars.include?("Selica") # false, так как это значение, а ищет ключи

p cars.key?(:mitsubisi) # true
p cars.has_key?(:mitsubisi) # true

p cars.value?("lancer") # true
p cars.has_value?("Rio") # true
p cars.has_value?("mustang") # false, так как значение в хэше с большой буквы