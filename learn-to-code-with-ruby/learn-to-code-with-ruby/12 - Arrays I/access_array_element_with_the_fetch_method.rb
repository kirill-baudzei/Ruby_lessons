# access_array_element_with_the_fetch_method
# вызов элемента массива с методом fetch

airports = ["JFK", "LAX", "Heathrow"]

puts airports.fetch(2)
puts airports.fetch(-2)
# puts airports.fetch(100) # не работает, так как нет такого элемента. работает только для существующих элементов

puts airports.fetch(100, "Some Airport") # выводит Some Airport. Делает этот элемент и выводит
puts airports.fetch(1, "Some Airport")  # выводит LAX