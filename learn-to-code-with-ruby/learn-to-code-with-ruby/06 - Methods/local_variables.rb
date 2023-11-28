# локальная переменная
action_star = "Leonardo Dicaprio" # переменная работает на весь файл

def film_movie # метод отдельное окружение. он независим и внутри себя имеет отдельный код
    action_star = "Rayn Gosling" # это локальная переменная . она работает только внутри метода.
    puts action_star
end

film_movie

puts action_star