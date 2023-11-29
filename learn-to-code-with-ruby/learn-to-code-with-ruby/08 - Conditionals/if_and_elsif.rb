# if and else conditions

# else не содержит своего собственного условия; он выполняется, если все предыдущие условия в if и elsif были ложными.

# elsif используется для добавления дополнительных условий в if после первого условия.
# Каждый блок elsif содержит свое собственное условие, которое проверяется, если предыдущие условия были ложными.

color = "Red"

if color == "Red"
  puts "Red is rad"
elsif color == "Yellow"
  puts "Yay for yellow"
elsif color == "Green"
  puts "Green is great"
end

number = 66

if number < 25
  puts "That's a small number"
elsif number < 50
  puts "That's a medium-sized number"
elsif number < 75
  puts "That's a big number"
elsif number < 150
  puts "That's a humongous better"
end

if number < 25
  puts "First condition is true"
elsif color == "Green"
  puts "Second condition is true"
end