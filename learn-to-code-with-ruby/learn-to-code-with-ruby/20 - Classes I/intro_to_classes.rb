# class method - Return the class from which the object was made
# Все объекты относятся к какому-либо классу
puts 5.class # Integer
puts 8.class
puts 5.class == 8.class # true

puts 3.14.class # Float
puts 99.99.class
puts 3.14.class == 99.99.class

puts 3.class == 3.14.class

puts

puts "Hello World".class # String
puts [1, 2, 3].class # Array
puts ({}).class # Hash
puts true.class # TrueClass
puts false.class # FalseClass
puts nil.class  # NilClass
puts (0..9).class # Range
puts Proc.new {}.class # Proc
