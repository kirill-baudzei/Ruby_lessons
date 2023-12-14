# Define a custom_count method that accepts a string and a string
# of search characters. The method should count how many times the
# search characters appear in the original string. Do not use the
# built-in count method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_count("Hello World", "l")     => 3
# custom_count("Hello World", "O")     => 0
# custom_count("Hello World", "z")     => 0
# custom_count("Hello World", "lo")    => 5
# custom_count("Hello World", "ol")    => 5

def custom_count(text, search_symbols)
  letters_array = text.chars
  fragments_array = search_symbols.chars
  counts = 0
  fragments_array.each do |fragment|
    letters_array.each do |letter|
      if fragment == letter
      counts += 1 
      end 
    end
  end
  counts
end

puts custom_count("Hello World", "l")   #  => 3
puts custom_count("Hello World", "O")   #  => 0
p custom_count("Hello World", "z")      # => 0
puts custom_count("Hello World", "lo")  #  => 5
puts custom_count("Hello World", "ol")  # => 5

# метод препода
def custom_count(text, search_characters)
  count = 0
  text.each_char { |character| count += 1 if search_characters.include?(character) }
  count
end
# более логичный, тк мы добавляем счетчик если наш второй аргумент содержит символ из первого

puts custom_count("Hello World", "l")   #  => 3
puts custom_count("Hello World", "O")   #  => 0
p custom_count("Hello World", "z")      # => 0
puts custom_count("Hello World", "lo")  #  => 5
puts custom_count("Hello World", "ol")  # => 5