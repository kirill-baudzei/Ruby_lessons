# mixing in multiple modules 

module A
  def whatever
    "Whatever"
  end

  def some_method
    "Hello from A"
  end
end

module B
  def some_method
    "Hello from B"
  end
end

class SomeClass
  include B
  include A
end

some_object = SomeClass.new
puts some_object.some_method # Hello from A
# работает метод с A. Так как модуль прописан последним среди include
puts some_object.whatever