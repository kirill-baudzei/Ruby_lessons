# A great way to grow your Ruby skills is to implement methods
# built into the language. Of course, the goal is to NOT use the
# original method in your solution; instead, come up with an alternate
# implementation using other methods/approaches. 
#
# Define a custom_max method that accepts an array.
# The method should return the largest value in the array.
# If the array is empty, the method should return nil.
# Do not use the max method in your solution!
#
# Examples:
# The => indicates the expected return value
# custom_max([434.12, 723.99, 84.12, 649.92])  => 723.99
# custom_max([8, 10, 2, 1, 19, 4])             => 19
# custom_max(["Tree", "Elm", "Zebra"])         => "Zebra"
# custom_max([])                               => nil
def custom_max(array) # написали метод, который работает как max. только кастомный )
  max_value = array[0]
  array.each do |element|
    if element > max_value
      max_value = element
    end
  end
  max_value
end



p custom_max([434.12, 723.99, 84.12, 649.92])  # => 723.99
p custom_max([8, 10, 2, 1, 19, 4])            # => 19
p custom_max(["Tree", "Elm", "Zebra"])        # => "Zebra"
p custom_max([])                              # => nil