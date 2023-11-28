# манипуляции с методами

def praise_person(name, age) # может быть сколько нужно аргументов
    puts "#{name.upcase} is amazing" # можно использовать методы прямо на аргументы. но методы должны подходить типу данных
    # например upcase не сработает на integer или float. только для string аргумента
    puts "#{name.downcase} is nice"
    puts "he is #{age - 5} years old"
  end
  
  praise_person("Kirill", 21) # нужно указать значние каждого аргумента  
  
  praise_person("Boris", 35) # нужно указать значние каждого аргумента  
  
  praise_person "Harry", 25 # помним, что можно без скобок 