# info в debegging
require "debug"

one = 123
two = 234
three = 345

debugger # когда в терминале введем info - получим информацию о всех переменных. полезно
# выход по команде q  / quit 


def reverse(text)
    return text if text.length == 1
    last_character = text[-1]
    remainder = text[0, text.length - 1]
    debugger
    last_character + reverse(remainder)
  end
  
  puts reverse "straw"