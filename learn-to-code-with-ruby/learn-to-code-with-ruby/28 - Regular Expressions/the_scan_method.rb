# scan method

# Метод scan в Ruby применяется к строке и используется для поиска всех совпадений с заданным регулярным выражением. 
# Он возвращает массив найденных совпадений.

# Пример использования метода scan:

text = "The quick brown fox jumps over the lazy dog."
matches = text.scan(/\b\w{5}\b/)
puts matches.inspect # ["quick", "brown", "jumps"]
# В этом примере, с использованием регулярного выражения \b\w{5}\b, метод scan ищет слова из пяти букв в строке text. 
# Результатом будет массив слов, удовлетворяющих этому условию.


voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

p voicemail.scan(/e/) # ["e", "e", "e", "e", "e"]

p voicemail.scan(/re/) # ["re", "re"] - ищет сочетание букв

p voicemail.scan(/[re]/) # ["e", "r", "e", "e", "r", "r", "e", "e"] - ищет буквы по отдельности