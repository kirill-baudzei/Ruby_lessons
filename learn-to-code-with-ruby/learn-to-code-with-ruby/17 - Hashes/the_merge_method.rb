# merge - combine 2 hashes together
# метод merge - соединяет 2 хэша в один

market = { garlik: "3 cloves", milk: "10 galons" }
kitchen = { bread: "2 slices", milk: "2 galons"}

p market.merge(kitchen) # {:garlik=>"3 cloves", :milk=>"2 galons", :bread=>"2 slices"}
# когда есть дубликат ключа, будет заменено тем, которое в хэше аргумента

p kitchen.merge(market) # {:bread=>"2 slices", :milk=>"10 galons", :garlik=>"3 cloves"}
# меняет порядок и дубликат ключа заменяет тем, что в хэше аругмента

market.merge!(kitchen) # через такой метод полностью и навсегда модифицируем хэш market
p market  # теперь он такой {:garlik=>"3 cloves", :milk=>"2 galons", :bread=>"2 slices"}