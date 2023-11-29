# IF - условный оператор

if 5 < 7 # запустит код ниже только если выражение true
  puts "It is true"
end

if 5 == 7 # выражение не true, следовательно ничего не запустится 
    puts "It is true"
end

password = "topsecret"

if password == "topsecret"
  puts "Congrats! You are logged in!"
end

word = "Kangaroo"
if word.length == 8 # можно использовать методы
  puts "TRUE!!!"
end
