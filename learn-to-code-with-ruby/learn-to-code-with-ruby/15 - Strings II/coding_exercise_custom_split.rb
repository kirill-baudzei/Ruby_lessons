# Define a custom_split method that accepts a piece of text and a delimiter. (разделитель)
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.
#
# Examples:
# The => indicates the expected return value
# custom_split("Hi, my name is Boris", " ")  => ["Hi,", "my", "name", "is", "Boris"]
# custom_split("ravioli is delicious", "i")  => ["rav", "ol", " ", "s del", "c", "ous"]
# custom_split("Zebra", "j")                 => ["Zebra"]
# custom_split(" hello", " ")                => ["hello"]

def custom_split(phrase, delimiter)
  letter_array = phrase.chars
  current_segment = ""  # Переменная для хранения текущего сегмента
  new_phrase = [] # пустой массив для хранения 
  letter_array.shift while letter_array.first == delimiter # Пропускаем начальные разделители, если они есть
  letter_array.each do |letter|
    if letter == delimiter
      new_phrase << current_segment  # Добавление текущего сегмента в массив
      current_segment = ""  # Начало нового сегмента
    else
      current_segment += letter  # Добавление символа к текущему сегменту
    end
  end
  new_phrase << current_segment  # Добавление последнего сегмента, если он не закончился разделителем
  new_phrase
end

p custom_split("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j")                # => ["Zebra"]
p custom_split(" hello", " ")               # => ["hello"]