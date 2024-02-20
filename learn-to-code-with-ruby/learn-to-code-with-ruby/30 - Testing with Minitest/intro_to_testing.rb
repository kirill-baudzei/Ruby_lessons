# intro to testing

# A test is code that validates that other code
# works as expected.
#
# MiniTest is a unit testing framework included in
# the Ruby standard library.

require "minitest/autorun"

def sum(a, b)
  a + b
end

class TestMathematics < Minitest::Test
  def test_sum_method
    assert_equal(5, sum(2, 3))
  end

  def test_sum_method_again
    assert_equal(7, sum(3, 4))
  end
end


# Minitest - это фреймворк для написания тестов на языке программирования Ruby. 
# Он предоставляет простой и легкий в использовании набор инструментов для создания и запуска тестов, а также проверки их результатов.

# Вот некоторые основные характеристики Minitest:

# Простота использования: Minitest предоставляет минималистичный синтаксис для написания тестов, делая их читаемыми и понятными.

# Модульность: Фреймворк разделен на модули, что позволяет выбирать только те части, которые вам действительно нужны. 
# Например, вы можете использовать Minitest::Test для базового функционала тестирования.

# Автоматический запуск: Подключив require 'minitest/autorun', вы можете автоматически запустить все тесты в вашем файле после его выполнения.

# Ассерты: Minitest предоставляет различные методы утверждения (assert, assert_equal, assert_raises, и др.), 
# которые делают проверку результатов ваших тестов удобной.

# Пример использования Minitest:

require 'minitest/autorun'

class MyTest < Minitest::Test
  def test_addition
    assert_equal 4, 2 + 2
  end

  def test_subtraction
    assert_equal 2, 4 - 2
  end
end
# Это простой тестовый класс, который проверяет сложение и вычитание. При запуске файла, который содержит этот код, 
# Minitest автоматически выполнит тесты и выдаст результаты.

# вывод

# Run options: --seed 2457

# # Running:

# ....

# Finished in 0.009740s, 410.6903 runs/s, 410.6903 assertions/s.

# 4 runs, 4 assertions, 0 failures, 0 errors, 0 skips