# приминение yield и proc на практике
def talk_about(name, &my_proc)
  puts "Let me tell you about #{name}"
  my_proc.call(name) # вариант с proc
end

def talk_about_2(name)
  puts "Let me tell you about #{name}"
  yield(name) if block_given? # вариант с yield
end

good_thing = Proc.new { |name| puts "#{name} is good" }
bad_thing = Proc.new { |name| puts "#{name} is a dolt" }

talk_about("Kirill", &good_thing)
# Let me tell you about Kirill
# Kirill is good

talk_about("Sam", &bad_thing)
# Let me tell you about Sam
# Sam is a dolt

talk_about("Kirill") { |name| puts "#{name} is irrelevant"} # второй аргумент (proc), можно заменить просто блоком кода
# Let me tell you about Kirill
# Kirill is irrelevant

talk_about_2("Dan") { |name| puts "#{name} is special" }
# Let me tell you about Dan
# Dan is special

talk_about_2("Dan", &bad_thing) # вместо блока для yield, принимается и Proc. Он заменяет блок для работа yield
# Let me tell you about Dan
# Dan is a dolt