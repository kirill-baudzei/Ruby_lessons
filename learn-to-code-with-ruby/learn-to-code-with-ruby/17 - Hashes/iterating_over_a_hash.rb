# Iteration is the process of looping over the pieces/components
# of an object.
# Итерации по Хэшу
#
# METHODS:
# each        - Iterate over each key-value pair
# each_key    - Iterate over each key
# each_value  - Iterate over each value
# keys        - Return array of hash's keys
# values      - Return array of hash's values

salaries = { director: 100000, producer: 200000, ceo: 300000 }

salaries.each { |position, salary| puts "The #{position} earns #{salary}$" }
puts
# The director earns 100000$
# The producer earns 200000$
# The ceo earns 300000$

salaries.each_key { |position| puts "The next position is #{position}" }
puts
# The next position is director
# The next position is producer
# The next position is ceo

salaries.each_value { |salary| puts "The next employee earns #{salary}" }
puts
# The next employee earns 100000
# The next employee earns 200000
# The next employee earns 300000

p salaries.keys # только ключи [:director, :producer, :ceo]
p salaries.values # только значения [100000, 200000, 300000]