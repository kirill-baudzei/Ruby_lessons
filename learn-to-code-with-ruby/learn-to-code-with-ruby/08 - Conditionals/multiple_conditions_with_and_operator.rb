# operator && - AND . Соеднияет условия в if или elsif

# &&
# AND

puts "Please enter username"
username = gets.chomp
puts "Please enter password"
password = gets.chomp

if username == "rubydev1" && password == "topsecret" 
  puts "Congrats, you've logged in!"
else
  puts "Incorrect, no access for you!"
end

# при вводе двух верных будет работать дальше. При хотя бы одном ошибочном - не работает