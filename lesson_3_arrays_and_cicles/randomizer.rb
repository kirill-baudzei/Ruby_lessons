# генерим число с 1 до 100
random_number = (rand * 10).to_i + 1
# комп сообщает что загадал
puts "Я закагадал рандомное число (целое 1 до 10)"
# пользователь угадывает
puts "Напиши свой варинт"

iterations = 0 # количество попыток

loop do
  
  iterations = iterations + 1 # с каждым разом будет + 1 попытка 

  if iterations > 5
    puts "Не угадал за 5 попыток!"
    break
  end

  guess = gets.to_i

  # догадка сравнивается с заданным числом

  if random_number == guess
    puts "Правильно!!!! Это мое число"
    break
  elsif guess < random_number
    puts "Нет, мое число больше"
  elsif guess > random_number
    puts "Нет, мое число меньше"
  end
end
