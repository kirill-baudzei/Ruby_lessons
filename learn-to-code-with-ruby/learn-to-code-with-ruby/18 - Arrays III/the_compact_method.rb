# compact method
# метод compact

p [1, 2, 3.14, false, nil].compact # [1, 2, 3.14, false]
# метод compact удаляет все nil элементы

p [1, 2, 3.14, false].compact # [1, 2, 3.14, false]
# если нет nil , то возвращает массив как он есть

sports = ["Football", "Soccer", nil, "Baseball", nil]
sports.compact! # полностью изменили исходный массив, убрав nil элементы
p sports