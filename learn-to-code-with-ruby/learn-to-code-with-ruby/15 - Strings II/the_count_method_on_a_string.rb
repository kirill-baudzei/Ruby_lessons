# метод count для string
# Метод count для строки в Ruby возвращает количество вхождений указанных символов или подстрок в строке. Метод имеет две формы использования:

# С указанием символов:
puts "hello world".count("lo")  # Возвращает 5, так как "lo" встречается 3 раза в строке "hello".
# считает сумму букв l и букв o. ищет не lo, а l и o 


# Без указания символов:
puts "hello".count(" ")  # Возвращает 0, так как строка " " не встречается в "hello"
# Метод count позволяет подсчитать количество вхождений определенных символов или определить общее количество символов в строке.