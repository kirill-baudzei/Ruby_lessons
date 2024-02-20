
# Final argument to assertion methods в терминологии Minitest в Ruby обозначает последний аргумент, 
# который вы передаете в методы утверждений (assertion methods) в тестовых случаях. 
# Этот аргумент представляет собой дополнительное сообщение, которое будет выведено в случае неудачного утверждения, 
# чтобы обеспечить более информативный вывод.

# Пример использования final argument:

require 'minitest/autorun'

class MyTest < Minitest::Test
  def test_assert_equal_with_message
    expected = 42
    actual = 41

    assert_equal(expected, actual, "Expected #{expected}, but got #{actual}")
  end
end
# В этом примере строка "Expected 42, but got 41" представляет собой final argument. 
# Она будет выведена, если утверждение assert_equal не выполнится. 
# Использование final argument позволяет более подробно описывать, что именно ожидается, и что было получено, 
# что полезно для быстрой диагностики проблем в случае ошибок в тестах.

# вывод
# 1) Failure:
# MyTest#test_assert_equal_with_message [c:/Ruby32....x]:
# Expected 42, but got 41.
# Expected: 42
#   Actual: 41

# 1 runs, 1 assertions, 1 failures, 0 errors, 0 skips