# step в дебагинге - выполнить текущую линию и перейти в следующей. shortcut - s
require "debug"

debugger

puts "Hello".downcase
puts "hello".upcase

debugger

3.times do |count|
  puts "current number #{count}"
  puts "Bla Bla Bla"
  debugger
end