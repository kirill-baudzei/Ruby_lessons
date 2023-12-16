# passing_objects_to_mutating_methods

def append_5(elements)
  elements << 5
end

values = [1, 2, 3, 4]
p values # [1, 2, 3, 4]
p append_5(values) # можно в качестве аргумента использовать заданную переменную. она изменяется в методе
p values # [1, 2, 3, 4, 5] - переменная изменилась после метода


def uppercase(text)
  text.upcase!
end
  
name = "Kirill"
p name # "Kirill"
uppercase(name)
p name # "KIRILL"