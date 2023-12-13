# Define a longest_word method that accepts a string.
# The method should return the longest word in the string.
# If two words are tied for maximum length, the method should 
# return the last word in the phrase with that length.
# You can assume:
#  - Every two words are separated by a single space
#  - The string does not contain any symbols or characters
#
# Examples:
# The => indicates the expected return value
# longest_word("Bobby loves big scary kangaroos too")  => "kangaroos"
# longest_word("Ruby is my favorite language")         => "language" 
# longest_word("Hello")  

def longest_word(sentense)
    dif_words = sentense.split
    current_longest = dif_words[0]
    dif_words.each do |word|
      if word.length >= current_longest.length
          current_longest = word
      end
    end
    current_longest
  end
  
  p longest_word("Bobby loves big scary kangaroos too")  # => "kangaroos"
  p longest_word("Ruby is my favorite language")         # => "language" 
  p longest_word("Hello") # => "Hello"
  
  # def longest_word(sentence) - более элегентное решение - метод max_by
  #   words = sentence.split
  #   longest_word = words.max_by { |word| word.length }
  # end