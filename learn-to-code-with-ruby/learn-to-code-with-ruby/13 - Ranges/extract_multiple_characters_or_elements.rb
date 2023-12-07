# extract_multiple_characters_or_elements 
# вызов нескольких элементов ренжа

story = "Once upon a time in a land far, far away..."

puts story[27..39] # far, far away выводит с 27 по 39 элемент строки
puts story.slice(27..39) # far, far away выводит с 27 по 39 элемент строки. аналогично
puts story[27...39]  # far, far awa - без последнего символа (не включительно ...)
puts story.slice(27...39)  # far, far awa - без последнего символа (не включительно ...)
puts story[27..200] # far, far away... выводит до конца и все
puts story.slice(27..200) # far, far away... выводит до конца и все
puts story[32..-9] # far - делает ренж от 32 элемента до -9 с конца. тк все что с минусом - начинается с конца
puts story[32...-9] # fa   аналогично как выше, но не включительно
puts story.slice(32..-9) # far

story[12..15] = "season" # элементы с 12 по 15 включительно переписываются на season
# выводит Once upon a season in a land far, far away...
puts story

numbers = [1, 3, 5, 7, 9, 15, 21, 18, 6]

p numbers[4..6] # выводит с 4 по 6 элемент включительно [9, 15, 21]
p numbers.slice(4..6) # аналогично
p numbers[4...6] # # выводит с 4 по 6 элемент не включительно последний [9, 15]
