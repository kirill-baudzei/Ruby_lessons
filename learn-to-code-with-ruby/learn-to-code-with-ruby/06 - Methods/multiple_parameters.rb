# несколько аргументов метода

def praise_person(name, age) # может быть сколько нужно аргументов
    puts "#{name} is amazing"
    puts "#{name} is nice"
    puts "he is #{age} years old"
  end
  
  praise_person("Kirill", 21) # нужно указать значние каждого аргумента  
  
  praise_person("Boris", 35) # нужно указать значние каждого аргумента  
  
  praise_person "Harry", 25 # помним, что можно без скобок 