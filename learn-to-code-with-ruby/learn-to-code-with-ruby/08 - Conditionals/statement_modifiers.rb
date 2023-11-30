# модификаторы выражений

number = 10000
verified = true

if number > 5000 && verified
  puts "the number is huge"
end

puts "the number is huge" if number > 5000 && verified # можно так же записать в одну строку

another_number = 8

unless another_number > 10
  puts "IS NOT GREATER THAN 10"
end

puts "IS NOT GREATER THAN 10" unless another_number > 10 
