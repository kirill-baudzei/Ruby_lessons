# методы Boolean , которые возвращают true or false. Такие методы заканчиваются на ? (например .between?)

# например even?: Возвращает true, если число четное, и false в противном случае.
# odd?: Возвращает true, если число нечетное, и false в противном случае.

puts 10.odd? # возвращает false
puts 10.even? # возвращает true

# positive? - проверяет положительное ли число
# negative? - проверяет отрицательное ли число

puts 1.positive? # выводит true, тк число положительное
puts -9.negative? # выводит true
puts 0.positive? # выводит false и для positive и для negative