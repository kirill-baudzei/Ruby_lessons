# переписывание какого-либо объекта массива через его индекс. В целом так же , как и в string

fruits = ["Apple", "Orange", "Grape", "Banana"]

puts fruits[0] # apple имеет позицию 0
puts fruits[1]
puts fruits[3]
p fruits[100] # выводит nil, так как нет ничего с таким индексом

puts

puts fruits[-1] # выведет Banana - последний
puts fruits[-2]
puts fruits[-4] # apple 
p fruits[-10] # nil

puts

puts fruits.slice(0) # аналогично, как и просто с индексом. Просто с методом slice
p fruits.slice(10)
p fruits.slice(-3)

puts

puts fruits.[](0) # так же метод, чтобы выполнить эту операцию. вызываем массив и ставим аргумент - индекс

puts

fruits[1] = "Watermelon" # замена имеющегося значения на новое
p fruits

fruits[4] = "Raspberry"
p fruits

fruits[10] = "Kiwi" # создаем 10ым Kiwi , но все до него будут nil.
# выведет ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, nil, nil, nil, nil, "Kiwi"]
p fruits