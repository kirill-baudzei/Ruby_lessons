# OR
# ||

entree = "Steak"
price = 49.99

food_is_delicious = entree == "Steak" # можно присваивать переменной такое равенство 
meal_is_affordable = price < 29.99 # и такое

if food_is_delicious || meal_is_affordable # если одно из условий true - код работает
  puts "At least one of the conditions is true, purchasing meal"
end