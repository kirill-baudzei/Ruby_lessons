# разница lambda и Proc

# Lambdas vs. Procs
# 1) A lambda cares about the number of arguments it receives.
#    A lambda will throw an error if passed the wrong number of arguments.
#    A Proc will ignore extra arguments and assign nil to missing arguments.
# 2) When a lambda returns, it passes control back to the calling mehtod
#    When a Proc returns, it triggers a return from the calling method
#    (similar behavior to a block)

# Возврат из вызывающего метода:
# Lambda: Возвращает управление вызывающему методу, аналогично обычному методу.
# Proc: Возвращает управление из метода, в котором он находится, аналогично блоку.

# Параметры:
# Lambda: Обрабатывает количество переданных параметров строго, вызывает ошибку при неправильном числе аргументов.
# Proc: Принимает любое количество параметров и игнорирует лишние, не вызывает ошибку.

my_proc = Proc.new { |name, age| puts "Your name is #{name} and you are #{age} years old." }
my_lambda = lambda { |name, age| puts "Your name is #{name} and you are #{age} years old." }

def do_stuff(&code)
  code.call("Kirill", 21)
end

def do_more_stuff(&code)
  code.call("Kirill")
end

do_stuff(&my_proc) # Your name is Kirill and you are 21 years old.
do_stuff(&my_lambda) # Your name is Kirill and you are 21 years old.
do_more_stuff(&my_proc) # Your name is Kirill and you are  years old. - Proc работает и с 1 аргументом, пропуская второй
# do_more_stuff(&my_lambda) - Lambda такое не пропустит , выдаст exception

puts

my_proc = Proc.new { return "PROC RETURN" }
my_lambda = lambda { return "LAMBDA RETURN" }

def execute(&logic)
  puts "Starting execution..."
  puts logic.call
  puts "Ending execution..."
end

execute(&my_lambda)
# Starting execution...
# LAMBDA RETURN
# Ending execution...

puts

execute(&my_proc)
# Starting execution...
# Возвращает управление из метода, в котором он находится, аналогично блоку. 
# - поэтому там происходит return и метод останвливается