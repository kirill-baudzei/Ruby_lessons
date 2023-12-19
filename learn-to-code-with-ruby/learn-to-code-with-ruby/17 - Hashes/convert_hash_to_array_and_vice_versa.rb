# to_a method - converts hash to array
# to_h method - converts array to hash

spice_girls = {
  scary: "Melanie Brown",
  sporty: "Melanie Chisholm",
  baby: "Emma Bunton",
  ginger: "Geri Halliwell",
  posh: "Victoria Beckham"
}
p spice_girls.to_a
# [[:scary, "Melanie Brown"], [:sporty, "Melanie Chisholm"], [:baby, "Emma Bunton"], 
# [:ginger, "Geri Halliwell"], [:posh, "Victoria Beckham"]]
# выводитт массив пар подмассивов , где хранится пара ключ - значение

power_rangers = [
  [:red, "Jason"],
  [:black, "Zack"],
  [:pink, "Kimberly"]
]
p power_rangers.to_h
# {:red=>"Jason", :black=>"Zack", :pink=>"Kimberly"}
# выводит массив пар ключ - значние из подмассивов