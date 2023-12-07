# the_case_statement_with_ranges
# case с ренжами. 

# 90 to 100 is an A
# 80 to 89 is a B
# 70 to 79 is a C
# 60 to 79 is a D
# <60 is an F

def calculate_test_grade(grade)
    case grade # упрощенная работа вместо if / elsif. 
    when 90..100 then "A" # верхнее значение включительно
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
    else "F"
    end
  end
  
  puts calculate_test_grade(90) # так как относится к 90...100 , выводит A
  puts calculate_test_grade(83) # выводит B
  puts calculate_test_grade(78) # # выводит C
  puts calculate_test_grade(62) # выводит D
  puts calculate_test_grade(13) # выводит F
  puts calculate_test_grade("Nonsense") # # выводит F