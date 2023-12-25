us_dollars = [15, 25, 11, 49, 51]
# p us_dollars.map { |number| number * 0.93}
# нужна логика конвертиации в ЕВРО через procs

to_euros = Proc.new { |currency| currency * 0.93 }
to_pln = Proc.new { |currency| currency * 4 }

to_byn = Proc.new { |currency| currency * 3 }

p us_dollars.map(&to_euros) # [13.950000000000001, 23.25, 10.23, 45.57, 47.43]
p us_dollars.map(&to_pln) # [60, 100, 44, 196, 204]
p us_dollars.map(&to_byn) # [45, 75, 33, 147, 153]

more_us_dollars = [1, 12, 351, 124124, 124, 97]
p more_us_dollars.map(&to_euros)
p more_us_dollars.map(&to_pln)
p more_us_dollars.map(&to_byn)


# еще пример с условием в блоке
is_senior = Proc.new { |age| age > 55 } # возвращает boolean

ages = [24, 1, 56, 60, 100, 101, 16]
p ages.map(&is_senior) # [false, false, true, true, true, true, false]
p ages.select(&is_senior) # [56, 60, 100, 101]
p ages.reject(&is_senior) # [24, 1, 16]
# вместо блока кода для метода отрабатывает ПРОК PROC, которые и включает блок кода