# read from a text file
# чтение текстового файла в Ruby
file_path = File.expand_path("novel.txt")
my_novel = File.open("novel.txt")
puts my_novel.class # File

my_novel.each { |line| puts line }
my_novel.close

# terminal выводит
# File
# Great American Novel

# Chapter 1