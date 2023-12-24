# sample method - extract one or more random elements from an array
# метод sample вытаскивает случайный элемент массива
# аргумент указывает на количество элементов и выводит в массиве
flavors = ["Chocolate", "Vanilla", "Strawberry", "Cookies and Cream"]

p flavors.sample # так выводит один элемент не массивом
puts

p flavors.sample(1) # один случаный элемент
p flavors.sample(2) # два случайных 
p flavors.sample(3) # и тд
p flavors.sample(4)
p flavors.sample(10)