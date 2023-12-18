# add_a_new_key_value_pair_to_hash
# добавление пары ключ - значение в хэш

menu = { burger: 3.99, taco: 1.99, chips: 1.59}
p menu # {:burger=>3.99, :taco=>1.99, :chips=>1.59}
p menu.length  # 3

menu[:filet_mignol] = 29.99 # добавляем пару ключ значение
p menu # {:burger=>3.99, :taco=>1.99, :chips=>1.59, :filet_mignol=>29.99}
p menu.length  # 4

menu[:taco] = 2.65 # если указать существующий ключ , то можно заменить значение
p menu # {:burger=>3.99, :taco=>2.65, :chips=>1.59, :filet_mignol=>29.99}

# метод store

menu.store(:salmon, 49.99) # добавляем новую пару через метод store
p menu # {:burger=>3.99, :taco=>2.65, :chips=>1.59, :filet_mignol=>29.99}
# Метод store в Ruby используется для добавления или обновления значения по заданному ключу в хэше. 

# Метод store позволяет явно указать ключ и значение для добавления или обновления в хэше. 
# Если ключ уже существует, метод просто обновит соответствующее значение; в противном случае, 
# он добавит новую пару ключ-значение.