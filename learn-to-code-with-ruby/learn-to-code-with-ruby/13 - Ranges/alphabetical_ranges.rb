# алфавитный ренж

alphabet = "a".."z"
p alphabet.class # range
p alphabet.first # "a"
p alphabet.last # "z"
p alphabet.last(1) # ["z"]
p alphabet.first(3) # ["a", "b", "c"]
p alphabet.last(5) # ["v", "w", "x", "y", "z"]

alphabet = "A".."z" # A-Z, a-z
p alphabet.first(40)

# ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", 
# "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h"]
# сначала идут буквы большие - символы - маленькие 