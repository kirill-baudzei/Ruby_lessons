# flatten method - create a 1-dimensional array (no nested arrays)

party_attendees = [
  "Joe",
  ["Bob", ["Keith"], "Cam"],
  "Holly",
  ["Rick", [["Molly"]]]
]

p party_attendees.flatten



# Метод flatten в Ruby используется для "выравнивания" (flattening) многомерного массива, 
# превращая его в одномерный массив. В результате применения метода flatten все вложенные массивы "разворачиваются",
# и элементы собираются в один массив.

nested_array = [1, [2, [3, 4], 5], 6]
flattened_array = nested_array.flatten

p flattened_array
# Результат: [1, 2, 3, 4, 5, 6]
# В данном примере, массив nested_array содержит вложенные массивы. 
# После применения метода flatten, мы получаем новый одномерный массив flattened_array, 
# который содержит все элементы в правильной последовательности.

# Важно отметить, что flatten создает новый массив и не изменяет оригинальный.