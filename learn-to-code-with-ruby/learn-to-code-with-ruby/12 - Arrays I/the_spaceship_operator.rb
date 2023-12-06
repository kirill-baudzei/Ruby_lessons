# the_spaceship_operator

# Spaceship Operator <=>
# Returns -1, 0, 1, or nil

# Returns 0 if two values are equal
p 5 <=> 5
p [3, 4, 5] <=> [3, 4, 5] # выводит 0 , если равны

# Returns -1 if the value on the left is smaller
p 5 <=> 10 # # выводит -1 , если первое меньше
p [1, 2, 4] <=> [1, 2, 10] 

# Returns 1 if the value on the left is greater
p 5 <=> 3 # выводит 1 , если первое больше
p [1, 10, 5] <=> [1, 5, 8]

# Returns nil if the values are incomparable
p 5 <=> [1, 2, 3] # выводит nil, если нельзя сравнить. 
p [nil, 1, 2] <=> [0, 1, 2] 