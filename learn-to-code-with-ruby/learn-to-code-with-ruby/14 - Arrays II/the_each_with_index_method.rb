# each with index
# берет каждый с определнным индексом

colors = %w(Blue Red Black White)

colors.each_with_index { |color, index| puts "The value of the index position #{index} = #{color}" } # считает еще и индексы элементов
# The value of the index position 0 = Blue
# The value of the index position 1 = Red
# The value of the index position 2 = Black
# The value of the index position 3 = White

[ 5, 15, 25 ].each_with_index do |number, index|
  puts "Number is #{number} and index is #{index}"
  puts "The product of the two is #{number * index}"
end
# Number is 5 and index is 0
# The product of the two is 0
# Number is 15 and index is 1
# The product of the two is 15
# Number is 25 and index is 2
# The product of the two is 50