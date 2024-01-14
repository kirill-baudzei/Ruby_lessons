# Monkey patching - adding functionality to an existing Ruby Class

# "Monkey patching" в Ruby означает изменение или расширение существующих классов или модулей во время выполнения кода. 
# Это позволяет добавлять новые методы или изменять поведение существующих методов без изменения самого кода класса или модуля.
# Monkey patching может быть полезным, но также может привести к нежелательным побочным эффектам, особенно 
# если он используется в больших проектах или в совместно используемых библиотеках. 
# Поэтому важно использовать monkey patching с осторожностью и быть уверенным в том, 
# что изменения не нарушат существующую функциональность кода.

class String
  def count_vowels # создали новый метод в существующем классе String
    self.downcase.count("aeiou")
  end
end

p "String".count_vowels # 1


class Array
  def sorted? # добавили метод, возвращающий boolean
    self == self.sort
  end
end

p [1, 2, 3].sorted? # true
p [1, 119, 28].sorted? # false
