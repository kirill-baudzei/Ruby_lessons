# Define a Cookie class within the file.
#
# Declare a create_cookie method that returns a Cookie object/instance
#
# Declare a multiple_cookies method that returns an array of
# two separate Cookie objects

class Cookie
end

def create_cookie
  Cookie.new
end

item = create_cookie
p item

def multiple_cookies
  one = Cookie.new
  two = Cookie.new
  result = [one, two]
end

array = multiple_cookies
p array

