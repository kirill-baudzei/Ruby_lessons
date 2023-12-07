# convert_ranges_to_arrays
# конвертирование ренжей в массивы
# метод to_a

letters_range = "A".."T"
p letters_range.class
# p letters_range[0]

letters_array = letters_range.to_a
p letters_array # выводит весь ренж в массиве
p letters_array.class # array
p letters_array[0] # выводит первый элемент не в массиве
p letters_array[10] # выводит 10ый элемент не в массиве
p letters_array.slice(0, 1) # выводит первый элемент в массиве

numbers_range = 415...450
p numbers_range.to_a # выводит массив из ренжа выше