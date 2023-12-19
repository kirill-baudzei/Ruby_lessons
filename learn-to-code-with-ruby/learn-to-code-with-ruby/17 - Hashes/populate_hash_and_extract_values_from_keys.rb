# Hash key-value assignment syntax
# key => value
# hash rocket

nfl_roster_salaries = {
  "Patrick Mahomes" => 50_000_000, # символами _ можно разделать большие числа для читабельности. Число остается целостным 
  "Josh Allen" => 25_000_000,
  "Joe Burrow" => 12_000_000,
}

p nfl_roster_salaries
puts nfl_roster_salaries.length # длинна хэша 3, так как 3 ключа

nfl_roster = {
  "Kansas City Chiefs" => ["Patrick Mahomes", "Travis Kelce"], # значения ключей могут быть массивами  (чем угодно)
  "Los Angeles Rams" => ["Matthew Stafford", "Aaron Donald", "Cooper Kupp"]
}
p nfl_roster
puts nfl_roster

p nfl_roster_salaries["Patrick Mahomes"] # выводит значение 50000000. Вызов происходит ключой в скобках []
p nfl_roster_salaries["Joe Burrow"] # выводит значение 12000000
p nfl_roster["Los Angeles Rams"] # выводит массив значений из хэша
p nfl_roster_salaries["Tom Brady"] # nil , так как такого ключа нет в хэше
p nfl_roster_salaries["patrick Mahomes"] # nil, нет ключа

puts

p nfl_roster_salaries.fetch("Josh Allen", 0) # метод fetch. работает как и вызов ключа через []
p nfl_roster_salaries.fetch("Josh Nonsense", 0) # Преимущество - можно передать второй аргумент, который выводится, если нет такого ключа. Значение по умолчанию

# Метод fetch в Ruby используется для получения значения по указанному ключу из хэша. 
# Он предоставляет дополнительные опции и контроль по сравнению с обычным доступом по ключу. Вот основные аспекты метода fetch:
# Примеры
my_hash = { "one" => 1, "two" => 2, "three" => 3 }

# Получение значения по ключу
puts my_hash.fetch("one")  # Вывод: 1

# Если ключ не существует, будет выводится исключение KeyError
# puts my_hash.fetch("four") # Вывод: KeyError: key not found: "four"

# Указание значения по умолчанию
puts my_hash.fetch("four", "not found") # Вывод: "not found"

# Использование блока для значения по умолчанию
puts my_hash.fetch("four") { |key| "#{key} not found" } # Вывод: "four not found"
