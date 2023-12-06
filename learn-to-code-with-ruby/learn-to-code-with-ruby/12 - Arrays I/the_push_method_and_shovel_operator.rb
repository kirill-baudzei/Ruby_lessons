# the_push_method_and_shovel_operator - методы добавления элемента в массив

soups = ["Onion", "Tom Yam", "Tomato"]

soups.push("Miso") # добавляет последним элементом
p soups

soups.push("Wonton", "Hot and Sour") # доблавляет 2 элемента в конце
p soups
# shovel - <<
locations = ["Airport", "Bar", "Saloon"]
locations << "House" # добавляет один элемент
p locations

locations << "Rodeo" << "Theme Park" # доблавляет 2 элемента в конце
p locations