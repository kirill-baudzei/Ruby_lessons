def generate_unique_strings(x)
  unique_strings = []

  until unique_strings.length == x
    new_string = Array.new(4) { ('a'..'z').to_a.sample }.join

    # Добавляем в массив, если строка уникальна
    unique_strings << new_string unless unique_strings.include?(new_string)
  end

  unique_strings
end

result_strings = generate_unique_strings(1000)

p result_strings