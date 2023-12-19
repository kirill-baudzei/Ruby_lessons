# select - build new hash by keeping key-value pairs based on a condition
# reject - build new hash by discarding key-value pairs based on a condition

# select и reject методы для хэша. 
# select - формирует новый хэш основываясь на условие (сохраняя)
# reject - создает новый хэш удаляя фрагменты по условию
# условие булевое

recipe = { sugar: 3, flour: 10, salt: 1, peper: 8 }
# в методе в || первая переменная это ключ, вторая - значение
p recipe.select { |ingredient, amount| amount >= 5 }
# {:flour=>10, :peper=>8} - оставляет только те элементы, которые соответствуют условию

p recipe.select { |ingredient, amount| ingredient.length < 5 } # {:salt=>1}

p recipe.reject { |ingredient, amount| ingredient.length < 5 } # {:sugar=>3, :flour=>10, :peper=>8}
# удаляет то, что соответсвует условию

p recipe.reject { |ingredient, amount| ingredient.to_s.include?("s") }
# {:flour=>10, :peper=>8} удалил ключи, у которых есть буква s, предварительно превратили символ в стринг