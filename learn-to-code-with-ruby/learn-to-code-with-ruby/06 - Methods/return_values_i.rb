# возврат значения в конце работы метода

def add_two_numbers(num1, num2)
    puts "OK, I'm solving your math problem"
    # puts num1 + num2
    return num1 + num2 # считает и возвращает значение return - заканчивает работу метода
    return "HI! I'm troll" # уже не работает
end

result = add_two_numbers(1 ,5) # выводит OK, I'm solving your math problem и след строкой сумму аргументов
p result # выводит 6