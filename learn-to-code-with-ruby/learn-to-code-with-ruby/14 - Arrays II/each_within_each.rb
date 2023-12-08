# each в другом блоке each

shorts = [ "stripied", "plaid", "Not mine", "Band" ]
ties = [ "Polka-dotted", "solid color", "Boring" ]

shorts.each do |shirt| # первая stripied должна сметчится с Polka-dotted из второго массива
  ties.each do |tie|
    # puts shirt трижды выводит каждый элемент из массива shorts
    puts "OPTION: A #{shirt} shirt and a #{tie} tie." # выводит сочетание каждого shorts  с каждым tie
  end
end