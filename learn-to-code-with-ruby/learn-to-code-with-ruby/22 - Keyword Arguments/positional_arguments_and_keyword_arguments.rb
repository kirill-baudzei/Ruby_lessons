# positional keyword and usual arguments

def sum(a, b: 1)
  a + b
end

p sum(4) # 5 , так как 4 + 1

p sum(5, b: 9) # 14