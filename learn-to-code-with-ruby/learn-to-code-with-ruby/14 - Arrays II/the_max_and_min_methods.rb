# методы max и min
# Методы max и min в Ruby используются для нахождения максимального и минимального значения в массиве соответственно.

# max: Возвращает максимальное значение в массиве.
numbers = [3, 7, 1, 5, 2]
max_value = numbers.max
puts max_value
# # Выведет: 7

# min: Возвращает минимальное значение в массиве.
numbers = [3, 7, 1, 5, 2]
min_value = numbers.min
puts min_value
# # Выведет: 1
# Оба метода могут использоваться для быстрого определения наибольшего или наименьшего значения в числовом массиве.

stock_prices = [434.12, 723.99, 84.12, 649.92]
p stock_prices.max
p stock_prices.min

companies = ["Nike", "Microsoft", "Apple"] # сравнивает по алфавиту. чем буква ближе к концу - тем больше ее значение. N > A
p companies.max # "Nike"
p companies.min # "Apple"

p [].max # nil
p [].min # nil





