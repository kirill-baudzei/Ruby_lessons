# дз - кастомный метод join

# Define a custom_join method that accepts an array of strings
# and a delimiter. The method should merge/join the array elements
# together into a single string. It should insert the delimiter
# in between every two subsequent elements. Do not use the
# built-in join method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_join(["red", "green", "blue"], "!") => "red!green!blue"
# custom_join(["Big", "Mac"], "$$")          => "Big$$Mac"
# custom_join([], "$$$")  

def custom_join(words, delimiter)
  result = ""
  words.each_with_index do |word, i|
    result += word
    result += delimiter unless i == words.length - 1
  end
  result
end

puts custom_join(["red", "green", "blue"], "!") # => "red!green!blue"
puts custom_join(["Big", "Mac"], "$$")          # => "Big$$Mac"
puts custom_join([], "$$$")  