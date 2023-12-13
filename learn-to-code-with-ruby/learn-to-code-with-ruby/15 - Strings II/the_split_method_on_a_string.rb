# методы SPLIT для string
# Метод split в Ruby используется для разделения строки на подстроки на основе определенного разделителя. Он возвращает массив подстрок.

# Пример:
sentence = "Hello, World! How are you?"
words = sentence.split(" ") # если не передавать аргумент - то будет разбивать по пробелам
puts words
# Этот код разделит строку sentence на подстроки, используя пробел в качестве разделителя, и выведет массив слов:
# ["Hello,", "World!", "How", "are", "you?"]
# В данном примере, каждый раз, когда метод split встречает пробел в строке, он создает новый элемент массива, содержащий подстроку до следующего пробела.

sentence = "Hello. I'm Kirill. How are you?"
words = sentence.split(".") # разобьет по точкам
puts words
# Hello
# I'm Kirill
# How are you?

sentences = "Hi! I am Kirill. I like to code with ruby"
sentences.split(" ").each do |word|
    puts "Currently, I'm on the word #{word}!"
    puts "It has #{word.length} characters!"
  end