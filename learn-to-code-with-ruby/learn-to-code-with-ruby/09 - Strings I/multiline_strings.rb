# multiline_strings
# позволяет делать string с разметкой. с помощью <<MLS можно записывать любой текст внутри. Вся табуляция сохраняется
poetry = <<MLS
    What a great language Ruby is!
    Me too :)
        - LOL
MLS

puts poetry