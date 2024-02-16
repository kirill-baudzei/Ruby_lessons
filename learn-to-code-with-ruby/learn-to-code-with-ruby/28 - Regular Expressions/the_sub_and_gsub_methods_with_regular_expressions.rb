# the_sub_and_gsub_methods_with_regular_expressions
# sub method - replace the first occurrence of a match
# gsub method - replace all occurrences of a match

puts "555 555 5555".sub(" ", "-") # 555-555 5555
puts "555 555 5555".gsub(" ", "-") # 555-555-5555
puts "555 555 5555".gsub(" ", "**")

puts

puts "1-(555)-123-4567".gsub("-", "").gsub("(", "").gsub(")", "")
puts "1-(555)-123-4567".gsub(/[-()]/, "")

# sub!
# gsub!



# sub и gsub - это методы в Ruby для замены подстрок в строке с использованием регулярных выражений:
# sub (Substitute): Заменяет только первое вхождение подстроки, соответствующей регулярному выражению.
# Пример:
"hello world".sub(/l/, "z")  # Результат: "hezlo world"


# gsub (Global Substitute): Заменяет все вхождения подстроки, соответствующей регулярному выражению, во всей строке.
# Пример:
"hello world".gsub(/l/, "z")  # Результат: "hezzo worzd"
# Оба метода позволяют использовать регулярные выражения для более сложных шаблонов замены в строках.