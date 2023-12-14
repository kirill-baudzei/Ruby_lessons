# к каждой гласной букве должно добавляться с + эта буква. создадим для этого метод, который принимает string

def sisyam(text)
  glasnye = "еаяэюиоуыЕАЯЭЮИОУЫ"
  result = ""
  text.each_char do |letter|
    if glasnye.include?(letter)
      result += letter + "с#{letter.downcase}"
    else
      result += letter
    end
  end
  result
end

puts sisyam("Я Алина Макарова")
puts sisyam("Я Кирилл Бавдей Отдыхай Лежи Балдей")