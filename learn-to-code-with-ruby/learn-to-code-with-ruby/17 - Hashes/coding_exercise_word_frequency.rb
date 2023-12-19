# Define a word_frequency method that accepts a piece of text.
# Return a hash with a count of the number of times each word
# appears within the text. The hash keys should be the words
# and the values should be their counts. Assume the text will
# be in all lowercase.
#
# Examples:
# The => indicates the expected return value
# word_frequency("blue red blue green")  => {"blue"=>2, "red"=>1, "green"=>1}
# word_frequency("a land far far away")  => {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
# word_frequency("")                     => {}

# есть метод tally

def word_frequency(text)
  words_arr = text.split(" ").tally # определяет сколько раз встречается определенный элемент
end

# мое решение

def word_frequency(text)
  words_arr = text.split(" ") # разделяем текст на массив подстрок
  result = Hash.new(0)
  words_arr.each do |word|
    result[word] += 1
  end
  result
end

p word_frequency("blue red blue green") # => {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency("a land far far away") # => {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency("")                    # => {}

# Hash.new(0): Здесь создается новый хэш с установленным значением по умолчанию 0. 
# Это означает, что если ключ отсутствует в хэше, то ему будет присвоено значение 0. 
# В данном случае, мы используем это для подсчета частоты встречаемости слов.

# words_arr.each do |word| ... end: В цикле each проходим по каждому слову в массиве words_arr.

# result[word] += 1: Используем хэш result для подсчета частоты встречаемости каждого слова. 
# Если word уже есть в хэше, то увеличиваем его значение на 1. Если нет, 
# то создается новая запись с ключом word и значением 1.

# Таким образом, каждое слово в тексте учитывается в хэше result с его текущей частотой встречаемости. 
# В конце, весь хэш возвращается из функции.


