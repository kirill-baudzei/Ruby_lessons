# методы shift и unshift
# shift - забирает и выводит один элемент из массива

units = ["Bridge", "Car", "Bus", "Bike", "tRACK", "Road"]

p units.shift # выводит Bridge не массивом. и забирает его из массива
p units #  Bridge - уже нет в массиве. 

p units.shift(1) # выводит Car массивом (тк указан аргумент). и забирает его из массива. 

p units.shift(2) # выводит два первых ["Bus", "Bike"]

units.unshift("New1", "New2") # unshift добавляет элемент в начале массива. В отличии от push
# ["New1", "New2", "tRACK", "Road"]
p units

