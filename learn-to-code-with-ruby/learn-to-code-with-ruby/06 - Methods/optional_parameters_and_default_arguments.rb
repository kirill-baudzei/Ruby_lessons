# опциональные аргументы и дефолтные значения

def title_asigner(name, suffix = "The Great")
  "#{name} #{suffix}"
end

puts title_asigner("Kirill", "The Fantastic") # выводит с присвоенным аргументом
puts title_asigner("Boris") # выводит со вторым дефолтным The Great