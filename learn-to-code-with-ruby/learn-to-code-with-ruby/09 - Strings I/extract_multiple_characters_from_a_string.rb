# extract_multiple_characters_from_a_string

poetry = "Once I have been to Poland"

puts poetry[5, 4] # берет 5ый идекс и после него выводит 4 символа. второй аргумент для опеределяения сколько далее цифр вывести

puts poetry[0, 5]

puts poetry[0, poetry.length] # весь string будет

puts poetry.slice(0, 5) # можно использовать slice - будет то же самое. просто подход через метод

puts poetry.slice(0, poetry.length)

puts poetry.slice(-7, 5)