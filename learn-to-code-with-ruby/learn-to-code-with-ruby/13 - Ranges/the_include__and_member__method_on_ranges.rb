# методы в ренжах
# include? 
# member?
# 3 способа проверить есть ли объект в ренже

alphabet = "a".."z"

puts alphabet.include?("j") # пишем include?() в скобках аргумент который ищем. получаем boolean true or false
puts alphabet.include?("z")
puts alphabet.include?("A") #false , тк ренж только из маленьких букв

puts
# include? = member?
puts alphabet.member?("j") # проверяет является ли j частью ренжа. аналогично include?
puts alphabet.member?("z")
puts alphabet.member?("A")

puts
# такой же способ проверки ===
puts alphabet === "z" # true
puts alphabet === "j"
puts alphabet === "A" # false
