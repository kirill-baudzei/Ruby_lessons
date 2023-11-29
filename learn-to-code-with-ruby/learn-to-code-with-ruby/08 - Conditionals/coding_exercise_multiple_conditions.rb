# Define a divisible_by_three_and_four method that 
# accepts a number as its argument. 
# It should return true if the number is evenly divisible by both 3 and 4 . 
# It should return false otherwise.
#
# Examples
# The => indicates the expected return value
# divisible_by_three_and_four(3)   => false
# divisible_by_three_and_four(4)   => false
# divisible_by_three_and_four(12)  => true
# divisible_by_three_and_four(18)  => false
# divisible_by_three_and_four(24)  => true

def divisible_by_three_and_four(number)
  if number % 3 == 0 && number % 4 == 0
    true
  else 
    false
  end
end

puts divisible_by_three_and_four(12)
puts divisible_by_three_and_four(10)
puts divisible_by_three_and_four(0)

# способ номер 2 

def divisible_by_three_and_four(number)
    divisible_by_three = number % 3 == 0
    divisible_by_four = number % 4 == 0
    divisible_by_three && divisible_by_four
end
  
  puts divisible_by_three_and_four(3) 
  puts divisible_by_three_and_four(4) 
  puts divisible_by_three_and_four(12)
  puts divisible_by_three_and_four(18)
  puts divisible_by_three_and_four(24)


# Declare a string_theory method that accepts a string as an argument. 
# It should return true if the string has more than 4 characters 
# or if the string includes the character "B" (capital).
#
# Examples
# The => indicates the expected return value
# string_theory("Big Mac")      => true
# string_theory("Bank")         => true
# string_theory("refrigerator") => true
# string_theory("boy")          => false
# string_theory("car")          => false

def string_theory(word)
  if word.length > 4 || word.include?("B")
    true
  else
    false
  end 
end

puts string_theory("Big Mac")      
puts string_theory("Bank")         
puts string_theory("refrigerator")
puts string_theory("boy")          
puts string_theory("car")

# способ номер 2 

def string_theory(text)
    text.length > 4 || text.include?("B")
end
  
  puts string_theory("Big Mac")     
  puts string_theory("Bank")        
  puts string_theory("refrigerator")
  puts string_theory("boy")         
  puts string_theory("car")    
