# Define a custom_delete method that accepts a text string and
# a string of deletion characters. The method should build up
# a new string consisting of only characters that are NOT found
# among the deletion characters. Do not use the built-in 
# delete method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_delete("cottage cheese", "c")     => "ottage heese"
# custom_delete("cottage cheese", "e")     => "cottag chs"
# custom_delete("cottage cheese", "ce")    => "ottag hs"
# custom_delete("cottage cheese", "ec")    => "ottag hs"

def custom_delete(text, deletion_characters)
  result = ""
  text.each_char do |letter|
    result += letter unless deletion_characters.include?(letter)
  end
  result
end


p custom_delete("cottage cheese", "c")    # => "ottage heese"
p custom_delete("cottage cheese", "e")    # => "cottag chs"
p custom_delete("cottage cheese", "ce")   # => "ottag hs"
p custom_delete("cottage cheese", "ec")   # => "ottag hs"