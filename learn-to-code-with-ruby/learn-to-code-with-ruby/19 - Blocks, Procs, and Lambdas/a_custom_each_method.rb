# custom each method
# свой кастомный метод each на основе yield и блока кода

[10, 20, 30].each { |number| puts "the square of the #{number} is #{number * number}" }
# хотим, что работало так же , как с методом each, только кастомно
# custom_each_method([10, 20, 30]) { |number| puts "the square of the #{number} is #{number * number}"}
puts
def custom_each_method(elements)
  i = 0
  while i < elements.length
    yield(elements[i]) # вызываем блок кода ниже. каждая итерация - один элемент
    i += 1
  end
end


custom_each_method([10, 20, 30]) { |number| puts "the square of the #{number} is #{number * number}"}
# the square of the 10 is 100
# the square of the 20 is 400
# the square of the 30 is 900

custom_each_method(["Kirill", "Person", "Man"]) do |name|
  puts "The length of #{name} is #{name.length}"
end
# The length of Kirill is 6
# The length of Person is 6
# The length of Man is 3