# break keywork
# break - останавливает работу цикла

# пример с урока по next

money_sentence = "I love $ in the morning, $ in the afternoon, and $ at night"

current_index = 0
final_index = money_sentence.length - 1 # 40

while current_index <= final_index # 7 <= 40
  if money_sentence[current_index] != "$" # false
    current_index += 1
    next # пока условие будет true , будет продолжать цикл. когда false станет, просто выполнит код ниже
  end

  puts "Found $ at index #{current_index}"
  current_index += 1
end

# переписанный с break. находим первый $ и после этого прерываем цикл.

money_sentence = "I love $ in the morning, $ in the afternoon, and $ at night"

current_index = 0
final_index = money_sentence.length - 1
first_money_index = nil

while current_index <= final_index
  if money_sentence[current_index] == "$"
    first_money_index = current_index
    break
  end

  current_index += 1
end

puts first_money_index