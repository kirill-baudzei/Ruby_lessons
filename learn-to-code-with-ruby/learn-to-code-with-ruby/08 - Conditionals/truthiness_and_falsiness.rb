# truthiness_and_falsiness - правдивость и фальшивость

if 5 # это  truthy и будет работать
  puts "Will it print?" # выведет на экран
end

# 2 falsy values - false, nil
# Everything else is truthy

if false
    puts "This will not print" # does no work
  end
  
  if nil
    puts "This will not print" # # does no work
  end 
  
  if -9
    puts "Will this print?" # it works
  end