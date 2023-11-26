# members = ["kIRILL", "kNIGHT", "kING"]
# arr = members[1].split("") - разбивает первый элемент на буквы
# puts arr

# arr = [ 1, 2, 3, 4 ]
# arr.insert(1, 1000)
# puts arr

# знать методы массивов
# || - pipe(s)
members = ["kIRILL", "kNIGHT", "kING"] # элементы массива - строки
current_index = 0
members.each.with_index do |member, current_index| # это блок - все что внутри DO ------ ПЕРеменных внутри блока не видно за его пределами!!!!
  # инструкции, которые нужно сделать для каждого элемента массива
  puts "another member"
  puts member
  puts current_index

  # current_index = current_index + 1
end 
