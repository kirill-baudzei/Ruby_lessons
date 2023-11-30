# ternary_operator - состоит из 3х фрагментов

# ternary - composed of three parts

if 1 < 2
    puts "Yes, it is"
  else
    puts "No, it's not"
  end
  
  # сначала пишет условие, потом ? . дальше указывает что если true и что если false , разделяем :
  value = 1 < 2 ? "Yes, it is" : "No, it's not" # ternary оператор и состоит из вопроса и друх варинтов
  # подходящий ответ назначается переменной 
  puts value
  
  puts "Yes".downcase == "No" ? "The two are equal" : "The two are not equal" # можно сразу в одну строку

  puts "Yes".downcase == "yes" ? "Kirill is cool" : "Kirill is bad" # Kirill is cool выводит, тк выражение true