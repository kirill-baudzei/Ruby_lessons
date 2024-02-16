# Ключевое слово catch в Ruby используется для перехвата (catching) исключений в блоках кода. 
# Вы можете использовать catch с заданным символом (обычно символом), чтобы определить, какой тип исключения вы хотите перехватить.

# Пример:

def divide(a, b)
  throw :invalid_argument unless b.is_a?(Numeric)
  raise ArgumentError, "Cannot divide by zero" if b.zero?
  a / b
end

result = catch(:invalid_argument) do
  begin
    divide(10, "not a number")
  rescue ArgumentError => e
    puts "Error: #{e.message}"
    throw :invalid_argument, 0  # перехватываем исключение и возвращаем значение 0
  end
end

puts "Result: #{result}"
# В этом примере catch используется для перехвата исключения с меткой :invalid_argument. 
# В случае возникновения ошибки в методе divide, мы выводим сообщение об ошибке, а затем используем throw для возврата значения 0.
# Таким образом, блок catch получает значение 0 и продолжает выполнение кода после catch.

# Важно отметить, что использование catch и throw для управления потоком управления программы может быть неочевидным и 
# использование исключений более типичным подходом в Ruby.