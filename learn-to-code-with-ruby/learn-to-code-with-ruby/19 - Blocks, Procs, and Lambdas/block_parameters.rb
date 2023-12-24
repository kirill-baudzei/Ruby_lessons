# параметры блока
def speak_the_truth(name)
  yield(name)
end
  
speak_the_truth("Kirill") { |name| puts "#{name} is brilliant!" } # Kirill is brilliant!
speak_the_truth("Ali") { |name| puts "#{name} is incredible!" } # Ali is incredible!

# Этот код представляет пример использования блока в Ruby с параметрами. 
# 1. speak_the_truth - это метод, который принимает один аргумент name.
# 2. yield(name) - это вызов блока с передачей значения name в блок. 
# 3. В данном контексте yield используется для передачи управления из метода в блок.
# 4. speak_the_truth("Kirill") { |name| puts "#{name} is brilliant!" } - вызывается метод speak_the_truth 
# с аргументом "Kirill", и передается блок, который выводит фразу, используя переданное значение name.
# 5. Аналогично для второго вызова speak_the_truth("Ali") { |name| puts "#{name} is incredible!" }.
  


def number_evaluation(num1, num2, num3)
  yield(num1, num2, num3) # 30
end
  
p number_evaluation(5, 10, 15) { |a, b, c| a + b + c } # 30
p number_evaluation(3, 4, 5) { |a, b, c| a * b * c } # 60

Этот код также демонстрирует использование блока в Ruby, но в данном случае блок выполняет операции 
с переданными аргументами num1, num2 и num3. Давайте разберем каждую часть:

#  - number_evaluation - это метод, который принимает три аргумента: num1, num2, num3.

#  - yield(num1, num2, num3) - это вызов блока с передачей трех аргументов num1, num2 и num3. 
# Значение, возвращаемое блоком, зависит от того, какие операции выполняются в блоке.

#  - p number_evaluation(5, 10, 15) { |a, b, c| a + b + c } - вызывается метод number_evaluation 
# с аргументами 5, 10 и 15, и передается блок, который складывает эти числа. 
# Результат блока (30) выводится с помощью p.

#  - p number_evaluation(3, 4, 5) { |a, b, c| a * b * c } - аналогично второму вызову, 
# но в этом случае блок умножает числа, и результат блока (60) также выводится.