# load a ruby file with a load method

# В Ruby, метод load используется для загрузки другого Ruby-файла в текущий контекст выполнения программы. 
# Этот метод просто выполняет код из указанного файла.

# Метод load полезен, например, когда вам нужно подгрузить код из другого файла в текущий скрипт. 
# Он также перечитывает файл каждый раз, когда вызывается, в отличие от require, который подгружает файл только один раз.

# В этой файле используем файл another_fine.rb
# нам станут доступны классы и методы из вызываемого файла

puts "Welcome to the program"

load "./another_file.rb" # ./ указывает что файл находится в этой же папке - директории

p some_method + " + Text from another file"

table = Table.new(material: "One_more_class_object")
p table.material

puts "We have reached the end of the file"

# вывод 
# Welcome to the program
# I am in the other file
# "I'm some method"
# "wooden"
# "I'm some method + Text from another file"
# "One_more_class_object"
# We have reached the end of the file