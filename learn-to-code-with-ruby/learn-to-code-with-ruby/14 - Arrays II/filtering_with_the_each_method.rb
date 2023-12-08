# filtering with EACH method in arrays

fives = [5, 10, 15, 20, 25, 30, 35, 40]

fives.each do |value|
  if value.even?
    puts value # выводит только четные числа
  end
  # можно записать иначе
  # puts value if value.even?
end

# весь код можно записать в одну строку
fives.each { |value| puts value if value.even? }


# создание нового массива на основание результата. Добавим результат к массиву
evens = []

# fives.each do |number|
#   if number.even?
#     evens.push(number) # добавляет четные в новый массив через метод пуш
#   end
# end

# короткий способ
fives.each { |number| evens.push(number) if number.even? }
p evens
