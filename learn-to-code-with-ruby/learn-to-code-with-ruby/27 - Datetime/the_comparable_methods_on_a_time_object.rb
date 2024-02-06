# the comporable methods on a time object

# с date и time можно использовать методы сравнения

birthday = Time.new(2024, 4, 12)
summer = Time.new(2024, 6, 21)
independence_day = Time.new(2024, 7, 4)
winter = Time.new(2024, 12, 21)

puts birthday < summer # true
puts birthday <= summer # true
puts winter > summer # true
puts winter >= summer # true
puts birthday == Time.new(2024, 4, 12) # true
puts birthday == Time.new(2024, 4, 12, 1, 1, 1) # false
puts birthday != independence_day # true
puts birthday != Time.new(2024, 4, 12, 1, 1, 1) # true
puts independence_day.between?(summer, winter) # true