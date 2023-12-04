# debugging gem is installed
# вызываются библиотеки через require

require "debug" # нужен когда уже на этапе дебага
# Standart library - коллекции кода собраны в библиотеки. Библиотеки требуют память. 
# например DateTime library. Чтобы не нагружать память вызываем через require только когда нужно

candy = "Sour Patch Kids"
puts "I love eating #{candy}"

debugger # альтернатива binding.break

beverage = "Arizona Aced Tea"
puts "I like drinking #{beverage}"

debugger # свои комманды в терминале у дебагера. проверяет переменные и тд. continue - перемещение по линиям
# альтернатива binding.break

puts "This is the end of the programm"