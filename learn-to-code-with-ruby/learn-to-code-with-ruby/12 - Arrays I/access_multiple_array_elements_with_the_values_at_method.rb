# вызов элементов массива через метод values_at

tv_channels = ["Belarus1", "Bel2", "ONT", "BBC", "FOX", "NBC"]

p tv_channels.values_at(0) # выводит нулевой элемент Belarus1
p tv_channels.values_at(1, 3) # выводит первый и ЧЕТВЕРНЫЙ элемент. Только два
p tv_channels.values_at(1, 3, 5, 0) # ["Bel2", "BBC", "NBC", "Belarus1"]. выводит элементы по идексам (аргументам) в методе

p tv_channels.values_at(1, 3, 5, -1) # дваждый выводит в конце последний. ТК 5 последний и -1 последний

p tv_channels.values_at(1, 3, 5, -100, 100) # 100 - выводит nil если элемент не задан