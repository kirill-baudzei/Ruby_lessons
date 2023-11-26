class Sample
  def my_method(arg1, arg2, arg3 = test, arg4 = :test2)
    puts arg1, arg2, arg3, arg4
  end

  def new_way(arg1:, arg2:, arg3: :test, arg4: 100) # другой вид записи
    puts arg1, arg2, arg3, arg4
  end

  # poetry mode
  def poetry(num, h)
    puts num
    puts h.inspect
  end
end

s = Sample.new
s.poetry 42, key1: 1, key2: :test, key3: "hi!"
# s.my_method(1, 33)
# s.new_way(arg1: "hi", arg2: "Hello!")

# h = {:key1 => 1, key2: "test", key3: "hello!"} # хеш записывается в подобном стиле как аргументы которые передаются методом