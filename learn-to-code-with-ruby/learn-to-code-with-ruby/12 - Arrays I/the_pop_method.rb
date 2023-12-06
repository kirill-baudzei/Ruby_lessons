# метод pop

bubble_tea_flavors = [
  "Chocolate", "Kiwi", "Peach", "Plum", "Strawberry", "Taro"
]
p bubble_tea_flavors

p bubble_tea_flavors.pop # выводит и вырезает мне последний элемент массива "Taro"
p bubble_tea_flavors

puts

p bubble_tea_flavors.pop(1) # выводит и вырезает один последний с конца элемент массива  "Strawberry"
p bubble_tea_flavors # выводит и вырезает уже без двух последних элементов, так как их вырезал pop

puts

p bubble_tea_flavors.pop(2) # выводит и вырезает ["Peach", "Plum"] - два оставшихся последних с конца
p bubble_tea_flavors