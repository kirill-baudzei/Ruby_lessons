# FizzBuzz is a popular programming problem to test a developer's
# ability to think logically with code.
#
# The problem is simple but deceptive.
#
# Define a fizzbuzz method that accepts a single number. 
# The method should output every number from 1 to that argument. 
#
# There are a couple caveats.
# If the number is divisible by 3, output "Fizz" instead of the number.
# If the number is divisible by 5, output "Buzz" instead of the number.
# If the number is divisible by both 3 and 5, output "FizzBuzz" instead of the number.
# If the number is not divisible by either 3 or 5, just output the number.
#
# Example: fizzbuzz(30) should print:
#
# 1
# 2
# Fizz
# 4x  
# Buzz
# Fizz
# 7
# 8
# Fizz
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz
# 16
# 17
# Fizz
# 19
# Buzz
# Fizz
# 22
# 23
# Fizz
# Buzz
# 26
# Fizz
# 28
# 29
# FizzBuzz

# РЕШЕНИЕ МОЕ - в общем верное

def fizzbuzz(number)
  i = 1
  while i <= number
    if i % 3 == 0 && number % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
    i += 1
  end
end

fizzbuzz(25)
fizzbuzz(11)