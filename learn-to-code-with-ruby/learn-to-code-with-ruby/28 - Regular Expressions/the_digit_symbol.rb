# the digit method

voicemail = 'I can be reached at 555-123-4567 or regexman@gmail.com'

# Any digit (0 through 9)
p voicemail.scan(/\d/) # d - digit - ищет только цифры

# Plus sign -> 1 or more digits in a row
p voicemail.scan(/\d+/) # числа с 2 и более цифрами # ["555", "123", "4567"]

# {} - An exact number of digits
p voicemail.scan(/\d{3}/) # конкретноо кол-во цифр ["555", "123", "456"]
p voicemail.scan(/\d{4}/) # ["4567"]

# 3 or more consecutive digits in a row
p voicemail.scan(/\d{3,}/) # три и более цифры подряд ["555", "123", "4567"]

# Between 2 and 3 consecutive digits in a row 
p voicemail.scan(/\d{2,3}/) # ["555", "123", "456"] - две или три цифры подряд