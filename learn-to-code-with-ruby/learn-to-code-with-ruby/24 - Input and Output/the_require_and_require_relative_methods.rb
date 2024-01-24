# the requier and require_relative methods

puts "Welcome to the program"

load "./another_file.rb" 

p some_method + " + Text from another file"

table = Table.new(material: "One_more_class_object")
p table.material

puts "We have reached the end of the file"


# require и require_relative - это методы в Ruby, используемые для подключения (загрузки) других Ruby-файлов 
# в текущий контекст выполнения программы.

# require:

# Используется для подключения стандартных библиотек Ruby или установленных гемов.
# Подключает файлы по путям, указанным в переменной окружения $LOAD_PATH.
# Если файл находится в текущем рабочем каталоге или в одном из путей $LOAD_PATH, 
# его можно подключить просто указав имя файла без расширения.
# Пример:

require 'net/http'
require 'json'


# require_relative:

# Используется для подключения файлов относительно текущего файла, а не относительно $LOAD_PATH.
# Позволяет использовать относительные пути от текущего файла.
# Пример:

require_relative 'my_module'
require_relative 'subdirectory/my_file'
# Оба метода возвращают true, если файл был успешно подключен, и false, если файл уже был подключен ранее. 
# Важно помнить, что require и require_relative подключают файлы только один раз, даже если они вызываются многократно.

# Примечание: Путь к файлу может быть указан относительно текущего файла (для require_relative) или относительно $LOAD_PATH (для require).

