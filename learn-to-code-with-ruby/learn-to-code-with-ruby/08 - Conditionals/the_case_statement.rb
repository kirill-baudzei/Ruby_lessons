# the case statement
# Выражение Case

def rate_my_mood(food)
#   if food == "Steak"
#   elsif food == "Sushi"
#   elsif food = "Burrito"
#   end
# вместо этого есть более простая запись
# динамическое значение
  case food 
  when "Steak"
    "Delicios! Pass the Steak souce"
  when "Sushi"
    "Super! I love Japanese food"
  when "Tacos", "Sandwich" # тут рабоатет условие OR - ИЛИ . заменяет несколко elsif
    "I do not like it. Too hot.."
  else 
    "We do not have this meal"
  end
end

puts rate_my_mood("Sushi")
puts rate_my_mood("Steak")
puts rate_my_mood("Burrito")
puts rate_my_mood("Sandwich")
puts rate_my_mood("Cereals")
puts rate_my_mood("Tacos")