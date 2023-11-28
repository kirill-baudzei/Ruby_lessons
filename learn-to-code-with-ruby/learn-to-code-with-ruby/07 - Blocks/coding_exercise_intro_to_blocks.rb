# упражнение 
# Define a print_five_times method that accepts no arguments.
# It should output the text "Hello" 5 times using the times method.
# Use the print method in your solution.
#
# Examples
#
# print_five_times() should output "HelloHelloHelloHelloHello"

def print_five_times
    5.times do
        print "Hello"
    end
  end
  
print_five_times


puts # пустая строка
# Define a money_printer method that accepts a single numeric argument.
# The number specifies how many times the method should print the
# string "Money" in sequence. Use the 'print' method in your solution.
#
# Examples
#
# money_printer(3) should output MoneyMoneyMoney
# money_printer(5) should output MoneyMoneyMoneyMoneyMoney
# money_printer(0) should output nothing

def money_printer(cycles)
  cycles.times do
    print "Money"
  end
end
  money_printer(3)
  money_printer(0)
  money_printer(5)