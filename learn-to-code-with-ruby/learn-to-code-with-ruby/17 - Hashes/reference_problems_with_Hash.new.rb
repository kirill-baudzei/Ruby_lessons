# what Ruby will give to you when a key does not exist
# Руби отдает это значение, когда такого ключа нет
team_members = Hash.new do |hash, key|
  hash[key] = []
end
  
  p team_members["Buccaneers"] # []
  p team_members
  
  team_members["Buccaneers"] << "Tom Brady" # ключу даем значение
  p team_members["Buccaneers"] # ["Tom Brady"]
  p team_members # весь хэш такой {"Buccaneers"=>["Tom Brady"]}
  
  team_members["Buccaneers"] << "Mike Evans" # теперь у ключа 2 значения 
  p team_members["Buccaneers"] # ["Tom Brady", "Mike Evans"]
  p team_members # {"Buccaneers"=>["Tom Brady", "Mike Evans"]}
  
  p team_members["Patriots"] # по умолчанию отдает значение []
  p team_members # но новый ключ со значением по умолчанию добавляется в конечный хэщ
  # {"Buccaneers"=>["Tom Brady", "Mike Evans"], "Patriots"=>[]}