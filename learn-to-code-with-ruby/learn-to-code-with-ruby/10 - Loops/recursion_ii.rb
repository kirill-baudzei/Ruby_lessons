# recursion ll
# рекурсия - метод вызывает сам себя часть 2
# часто задачу можно решить 2 методами. С помощью рекурсии и без
# рекурсия иногда ведет к более красивому коду.

# puts "straw".reverse

# но метод сложноват без рекурсии
def reverse(text)
  first_index = 0
  last_index = text.length - 1 # для swraw последний индекс 4
  reversted_text = ""

  while last_index >= first_index # 4 >= 0 
    reversted_text += text[last_index] # либо через <<  будет w при первом цикле. и так далее по одной букве.
    last_index -= 1 # уменьшаем последий индекс на 1
  end
  reversted_text
end
puts reverse("straw")

puts reverse("straw")

# способ 2
 # w + reverse(stra)
 # a + reverse(str)
 # и так далее

 def reverse_new(word)
  return text if word.length == 1
  last_character = word[-1]
  remainder = word[0, word.length - 1] # можно передавать 2 аргумента, где второй - это обозначение сколько букв вывести. stra остается
  last_character + reverse(remainder) # w + stra. и так каждый цикл. wa + srt, wat + sr и так до полного реверса
 end

 puts reverse_new("straw")
 puts reverse_new("Kirill")




