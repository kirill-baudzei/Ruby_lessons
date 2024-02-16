# Catching Error Object в Ruby относится к возможности перехвата и обработки ошибок, 
# используя ключевые слова begin, rescue, ensure, и raise. 
# Этот механизм предоставляет программисту контроль над обработкой исключений в коде.

def sum(a, b)
  begin
    a + b
  rescue TypeError => e
    puts "CLASS NAME: #{e.class}"
    puts "MESSAGE: #{e.message}"
    # CLASS NAME: TypeError
    # MESSAGE: String can't be coerced into Integer
  rescue NoMethodError => error
    puts "We're gonna do something different to resolve a NoMethodError"
    puts "CLASS NAME: #{error.class}"
    puts "MESSAGE: #{error.message}"
  end
  # We're gonna do something different to resolve a NoMethodError
  # CLASS NAME: NoMethodError
  # MESSAGE: undefined method `+' for nil:NilClass
end

puts sum(3, 5) # # 8
puts sum(3, "5") # Unknown
puts sum(nil, nil) # Unknown



begin
  # Код, который может вызвать ошибку
  result = 10 / 0
rescue ZeroDivisionError => e
  # Обработка ошибки деления на ноль
  puts "Error occurred: #{e.message}"
ensure
  # Код, который выполнится в любом случае, даже если произошла ошибка
  puts "Ensure block: This code always runs"
end

# В данном примере, если происходит деление на ноль, программа переходит в блок rescue, где 
# объект ошибки (ZeroDivisionError) присваивается переменной e, и затем выполняется соответствующий блок обработки ошибки. 
# Блок ensure будет выполнен независимо от того, произошла ошибка или нет.

# Это позволяет более гибко управлять сценариями обработки ошибок и внедрять логику в код, например, 
# для корректного закрытия ресурсов в блоке ensure.
