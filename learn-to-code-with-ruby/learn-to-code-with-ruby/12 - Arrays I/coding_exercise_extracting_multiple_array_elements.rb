# Define a split_in_two method that accepts an array.
# I'd like to split the array into two arrays.
# If the original array has an even number of elements,
# ensure that the 2 new arrays have an equal number of elements
# If the original array has an odd number of elements,
# ensure that the first new array has the greater number of elements.
#
# Examples:
# The => indicates the expected return value
# split_in_two(["A", "B"])                => [["A"], ["B"]]
# split_in_two(["A", "B", "C", "D"])      => [["A", "B"], ["C", "D"]]
# split_in_two(["A", "B", "C"])           => [["A", "B"], ["C"]]
# split_in_two(["A", "B", "C", "D", "E"]) => [["A", "B", "C"], ["D", "E"]]

def split_in_two array
  elements_count = array.length
  if elements_count.even? # если четное то делятся поровну
    half = elements_count / 2 # узнаем индекс среднего
    first_part = array.slice(0...half) # ... - не включительно верхнее. Выводит массив тк метод slice
    second_part = array.slice(half..-1) # включительно верхнее, то есть -1 индекс. выводит массив тк метод values at
    result = [first_part, second_part] 
  elsif elements_count.odd? # если нечетное то в первом массиве должно быть больше
    half = elements_count / 2 # узнаем индекс среднего
    first_part = array.slice(0..half)
    second_part = array.slice((half+1)..-1)
    result = [first_part, second_part]
    result
  end
end

p split_in_two(["A", "B"])
p split_in_two(["A", "B", "C", "D"]) 
p split_in_two(["A", "B", "C", "D", "E", "F"]) 
p split_in_two(["A", "B", "C"])         
p split_in_two(["A", "B", "C", "D", "E"])

# В Ruby разница между операторами .. и ... в диапазонах заключается в том, включается ли последний элемент в диапазон или нет.
# .. (две точки) включает в себя последний элемент.
# ... (три точки) исключает последний элемент.


# мой более длинный код с проверкой на 2 элемента в исходном массиве

# def split_in_two array
#   elements_count = array.length
#   if elements_count == 2
#     first_part = array.values_at(0) # первый индекс
#     second_part = array.values_at(-1) # последний
#     result = [first_part, second_part] # массив из двух массивов
#   elsif elements_count.even? # если четное то делятся поровну
#     half = elements_count / 2 # узнаем индекс среднего
#     first_part = array.slice(0...half) # ... - не включительно верхнее. Выводит массив тк метод slice
#     second_part = array.slice(half..-1) # включительно верхнее, то есть -1 индекс. выводит массив тк метод values at
#     result = [first_part, second_part] 
#   elsif elements_count.odd? # если нечетное то в первом массиве должно быть больше
#     first_part = array.slice(0...-1)
#     second_part = array.slice(-1, 1)
#     result = [first_part, second_part]
#     result
#   end
# end

# p split_in_two(["A", "B"])
# p split_in_two(["A", "B", "C", "D"]) 
# p split_in_two(["A", "B", "C", "D", "E", "F"]) 
# p split_in_two(["A", "B", "C"])         
# p split_in_two(["A", "B", "C", "D", "E"])
