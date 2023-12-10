# Define a product_of_number_and_index method that accepts an array of numbers. 
# The method should iterate over the elements. For each element,
# it should multiply the element by its index position. It should
# then add that product to a rolling sum. Return the final sum.
# If the array has no elements, the final sum should be 0.
#
# Examples:
# The => indicates the expected return value
# product_of_number_and_index([1, 2, 3]) => (0 * 1) + (1 * 2) + (2 * 3) => 8
# product_of_number_and_index([])        => 0

def product_of_number_and_index(array)
  sum = 0
  array.each_with_index do |number, index|
    sum += (number * index)
  end
  sum
end

puts product_of_number_and_index([1, 2, 3]) # => (0 * 1) + (1 * 2) + (2 * 3) => 8
puts product_of_number_and_index([])        # => 0