# == равно

puts 10 == 10 # выведет true == это вопрос для ruby, равно ли. Отдает Boolean
puts 2 == 3 # выведет false

a = 10
b = 5
c = 10

puts a == b # false
puts a == c # true

puts

puts "hello" == "hello" # true
puts "hello" == "bicycle" # false
puts "hello" == "Hello" # false
puts "hello" == "hello " # false
puts "5" == "5" # true
puts "5" == 5 # false
puts "5".to_i == 5 # true
puts "5" == 5.to_s # true

puts

puts 5.class # integer
puts 5.0.class # float

puts 5 == 5.0 # true