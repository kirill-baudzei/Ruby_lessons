# метод include? для массивов

movies = ["Horror", "Comedy", "Thriller", "Detective", "drama"]

p movies.include?("drama") # true

p movies.include?("DRAMA") # false

p movies.include?("DRAMA".downcase) # true