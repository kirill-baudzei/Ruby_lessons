# delete - remove a key-value pair by its key

superheroes = {
  spiderman: "Peter Parker",
  superman: "Clark Kent",
  batman: "Bruce Wayne"
}

p superheroes

real_name = superheroes.delete(:spiderman)
p superheroes # {:superman=>"Clark Kent", :batman=>"Bruce Wayne"}. 
# Пара spiderman: "Peter Parker", удалена методом delete(:key). Хэш изменился (мутировал)
p real_name # "Peter Parker" - переменная отдает удаленное значение ключа 
# метод отдает значение . Если нужно его сохранить, можно назначить переменную, как с real_name