# optional keyword arguments

def sum(a: 1, b: 1)
  a + b
end

p sum # 2
# p sum(3, 5) - error

p sum(a: 3) # 4 - так как b тянется из изначального значения
p sum(b: 5) # 6 , так как a берется 1 из изначального кeyword аргумента
p sum(a: 20, b: 30) # 50