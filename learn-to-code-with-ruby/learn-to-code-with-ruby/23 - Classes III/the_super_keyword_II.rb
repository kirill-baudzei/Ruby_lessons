# super в Ruby можно использовать в трех различных контекстах:

# Без аргументов:
class Parent
  def example
    puts "Parent's example method"
  end
end

class Child < Parent
  def example(param)
    super()
    puts "Child's example method. #{param}"
  end
end

Child.new.example("Example word")
# Здесь super вызывает метод example из суперкласса без передачи дополнительных аргументов.



# С передачей аргументов:
class Parent
  def greet(name)
    puts "Hello, #{name}!"
  end
end

class Child < Parent
  def greet(name)
    super(name)
    puts "How are you, #{name}?"
  end
end

Child.new.greet("Alice")
# super(name) передает аргумент name методу из суперкласса.


# Без скобок:
class Parent
  def hello
    puts "Hello from Parent class"
  end
end

class Child < Parent
  def hello
    super
    puts "Hello from Child class"
  end
end

Child.new.hello
# В данном случае super вызывает метод из суперкласса без передачи аргументов и без использования скобок. 
# Это допустимо, если метод в суперклассе также вызывается без скобок.