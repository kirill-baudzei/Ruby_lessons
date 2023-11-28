# return в методе

def add_two_numbers(num1, num2)
    puts num1 + num2
    return num1 + num2 
end

result = add_two_numbers(1 ,5) # выводит OK, I'm solving your math problem и след строкой сумму аргументов
p result # выводит 6

def nothing
    puts "Is it a nil??? Yes"
end

result = nothing

p result # nil
p result.class  # выводит NilClass



def sum_number(num1, num2)
    # logic 1
    # return keyword

    # logic 2
    num1 + num2 # даже без return смотрит последнюю строку и делает return автоматически
end

puts sum_number(11, 9)
