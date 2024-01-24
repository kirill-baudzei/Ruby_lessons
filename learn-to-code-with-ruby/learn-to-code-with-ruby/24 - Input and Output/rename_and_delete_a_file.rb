# rename and delete file

# File.rename("my_first_file.txt", "SomethingBetter.txt") # переименовывает файл

File.delete("SomethingBetter.txt") # удаляет файл. Если такого файла нет - выдает ошибку. 

File.exist?("SomethingBetter.txt") # возвращает true , если такой файл существует. false - если нет.