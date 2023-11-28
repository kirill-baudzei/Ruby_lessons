# up to down to methods

5.upto(10) { |current| puts "the loop is now on #{current}" } # upto метод - аргумет число к которому нужно прийти

# работает как 5times, но от какого числа до какого-то включительно

6.downto(0) { |number| puts "Countdown: #{number}" } # аналогично только идет вниз от 6 до 0 включительно

9.downto(1) do |amount|
  puts "#{amount} bottles of beer on the wall"
  puts "Take one down, pass it around"
  puts "#{amount - 1} bottles of the beer on the wall"
end