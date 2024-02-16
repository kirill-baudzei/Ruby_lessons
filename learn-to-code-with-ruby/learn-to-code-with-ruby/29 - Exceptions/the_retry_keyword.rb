# retry keyword

def sum(a, b)
  begin
    a + b
  rescue TypeError => e
    a = a.to_i
    b = b.to_i
    retry # отправит код выполняться еще раз после использования кода выше
  rescue NoMethodError => error
    puts "We're gonna do something different to resolve a NoMethodError"
    puts "CLASS NAME: #{error.class}"
    puts "MESSAGE: #{error.message}"
  end
end

puts sum(3, 5) 
puts sum(3, "5") # 8 благодаря retry - параметры станут integer и ошибки не будет. код отработает



# retry - это ключевое слово в Ruby, которое используется в блоке rescue для повторного выполнения кода, вызвавшего исключение. 
# Когда retry встречается внутри блока rescue, программа возвращается к началу блока begin, где происходит новая попытка выполнения кода.

# Пример использования retry:

attempt = 0

begin
  # Код, который может вызвать ошибку
  result = 10 / 0
rescue ZeroDivisionError => e
  # Обработка ошибки деления на ноль
  puts "Error occurred: #{e.message}"
  attempt += 1
  retry if attempt < 3
end
# В этом примере, если происходит деление на ноль, программа переходит в блок rescue, выводит сообщение об ошибке, 
# увеличивает счетчик attempt, и затем использует retry, чтобы снова выполнить блок begin. 
# Этот процесс повторяется, пока attempt не достигнет значения 3.