# работа с несколькими элементами массива. переназначение или вызов

sesame_street = [
  "Elmo", 
  "Bib bird",
  "Monster",
  "asker",
  "ockar",
  "Renie"
]

p sesame_street.slice(0, 1) # выведет первый элемент как массив
p sesame_street[0, 3] # начни с элемента 0 и выведи 3. первый аргумент - начальный элемент. второй - количество, сколько нужно выводить
p sesame_street[2, 5] # на выходе всегда получаем массив
p sesame_street[3, 1]
p sesame_street[2, 12] # выводит максимально много. все элементы что есть
 # то же самое что и выше, только с методом slice
p sesame_street.slice(0, 3) 
p sesame_street.slice(2, 5) 

sesame_street[3, 2] = "New1", "New2" # заменяет 3 элемент на New1 и следующий после 3го на New2
# выводит ["Elmo", "Bib bird", "Monster", "New1", "New2", "Renie"]
p sesame_street

sesame_street[3, 2] = "New1", "New2", "New3" # тут заменяет 3ий и 2 после него
p sesame_street
# выводит ["Elmo", "Bib bird", "Monster", "New1", "New2", "New3", "Renie"]. # renie передвигается, а не заменяется. перед ним появляется new3

