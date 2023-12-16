# метод freeze

# Метод freeze в Ruby используется для замораживания объекта. 
# Замороженный объект нельзя изменить: нельзя добавить, удалить или изменить его переменные экземпляра. 
# Это помогает предотвратить случайные или нежелательные изменения объекта, особенно в многопоточных сценариях. 
# Замороженные объекты полезны, когда вы хотите, чтобы объект был неизменным после создания.

name = "Boris".freeze
hobbies = ["Coding", "Sushi"].freeze

# name << " the Genius" - выводит ошибку
# hobbies << "Winning"
# name.upcase!

name_dup = name.dup
name_dup << " the Genius"
p name_dup # дубликат можно изменять

hobbies_dup = hobbies.dup # когда dup, копию можно изменять
hobbies_dup << "Winning"
p hobbies_dup # дубликат можно изменять

name_clone = name.clone # когда использует clone - То копия тоже заморожена с freeze.
# name_clone << " the Genius"

hobbies_clone = hobbies.clone
# hobbies_clone << "Winning"