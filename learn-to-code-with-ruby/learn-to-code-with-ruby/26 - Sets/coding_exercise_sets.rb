# The customers.txt file includes a list of all customers who
# visited out shop in the last month along with their phone numbers.
# Each customer name and phone number is separated by a comma.
# I'd like to call each phone number once to ask about them their experience.
# Some customers visited the store multiple times, so I want to make 
# sure there are no duplicate phone numbers in the final collection.
#
# Define a generate_unique_phone_numbers method.
# The method should parse the attached customers.txt file
# Return a Set with the phone numbers of the customers.
# Ignore the customer's names.
#
# Parse the file and return a Set of all unique phone numbers.

# читаем файл. получаем все строки как в файле

require "set"
 
def generate_unique_phone_numbers
  phone_numbers = Set.new
  
  File.open("customers.txt").each do |customer| # проходимся по каждой строке
    elements = customer.chomp.split(",") # удаляем разрыв строки через chomp и делим стрку на массив 2х элементов - делим по символу ,
    phone = elements[1]
    phone_numbers.add(phone)
  end
  
  phone_numbers
end

p generate_unique_phone_numbers
ruby coding_exercise_sets.rb
#<Set: {"(838) 352-2212", "(647) 477-7093", "(686) 868-8153", "(433) 380-7556", "(792) 460-2468", "(341) 615-6292", 
# "(534) 566-1292", "(782) 929-7374", "(264) 933-7149", "(987) 339-2916", "(964) 645-2706", "(262) 657-8878", "(757) 698-5360", 
# "(774) 300-1239", "(517) 761-1106", "(518) 862-8137", "(715) 965-4152", "(501) 789-4040", "(953) 783-6094", "(708) 382-4385"}>