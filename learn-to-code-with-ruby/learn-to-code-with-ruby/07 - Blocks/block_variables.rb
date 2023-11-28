# переменные в блоке

3.times { |count| puts "Hello" } # три раза выведет Hello


# cycles - переменная в блоке значние которое меняется каждый цикл (в данном случае 20 раз от 0 до 19). переменная есть только в блоке
20.times { |cycles| puts cycles } # выведет числа от 0 до 19 

3.times do |running_count| # цикл с do сработает  3 раза
  puts "The current count is #{running_count}" # значени меняются от 0 до 3 и выводятся.
end
