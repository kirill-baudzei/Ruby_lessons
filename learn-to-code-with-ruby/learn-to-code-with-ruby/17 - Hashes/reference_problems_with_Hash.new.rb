# what Ruby will give to you when a key does not exist
# Руби отдает это значение, когда такого ключа нет
team_members = Hash.new do |hash, key| # этот блок кода работает, только если в хэше нет такого ключа (key)
  hash[key] = [] # по умолчанию значение - пустой массив
end
  
  p team_members["Buccaneers"] # [] - значение по умолчанию. Но ключ уже существует со значением по умолчанию
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