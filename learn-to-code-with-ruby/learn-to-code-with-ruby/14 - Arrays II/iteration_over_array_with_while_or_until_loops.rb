# использование циклов while / until с массивами

animals = ["Lion", "Zebra", "Baboon", "Cheetah"]

i = 0 # задаем нулевой индекс

while i < animals.length # пока 0 < 4
  puts "The index is #{i} and the animal is #{animals[i]}"
  i += 1
end
# вывод
# The index is 0 and the animal is Lion
# The index is 1 and the animal is Zebra
# The index is 2 and the animal is Baboon
# The index is 3 and the animal is Cheetah

puts

i = 0 # нулевой индекс

until i == animals.length # 4 == 4. то же самое, но с until
  puts "The index is #{i} and the animal is #{animals[i]}"
  i += 1
end

