# ensure - это ключевое слово в Ruby, используемое в блоке begin...rescue...ensure. 
# Блок ensure содержит код, который будет выполнен в любом случае, независимо от того, произошло исключение или нет. 
# Даже если произошло исключение, блок ensure будет выполнен перед тем, как программа завершится.

# Пример использования ensure:

begin
  # Код, который может вызвать ошибку
  result = 10 / 0
rescue ZeroDivisionError => e
  # Обработка ошибки деления на ноль
  puts "Error occurred: #{e.message}"
ensure
  # Блок ensure будет выполнен в любом случае
  puts "Ensure block executed"
end
# В этом примере, даже если произойдет ошибка деления на ноль, блок ensure все равно будет выполнен. 
# Это полезно, например, для освобождения ресурсов или выполнения завершающих действий, независимо от того, произошло исключение или нет.




def sum(a, b)
  begin
    a + b
  rescue TypeError => e
    a = a.to_i
    b = b.to_i
    retry
  rescue NoMethodError => error
    puts "Can't solve this, sorry"
  ensure # ensure - выполняется всегда
    puts "I'm always going to run" # выполняет всегда
  end
end

puts sum(3, 5)
# I'm always going to run
# 8
puts sum(3, "5")
puts sum("3", 5)
puts sum(nil, nil)