jokes = [
    "Who needs April Fools when your whole life is a joke?",
    "My dad always tells jokes at family dinners",
    "Alina's brother has a talent for telling jokes that make everyone crack up",
    "Everyone burst out laughing when they noticed that I had torn my pants at the bottom",
    "All my friends always laugh at this moment in the movie, but I don’t get it. Please explain the joke to me",
    "I tried to make a joke during the date, but unfortunately it fell flat"
]

# puts jokes.length
# puts jokes.length - 1 - последний элемент массива = длинна - 1
# puts jokes[jokes.length - 1]
# random_index = (rand * jokes.length).to_i # число от 0 до 6 (как обьектов в цикле)
# puts jokes[random_index]


# более простой способ через shuffle
# puts jokes.shuffle.first - просто рандомный порядок делоает и выдает первый!


# еще более простой способ через SAMPLE - берет рандомный  элемент массива без шафла (перемешивания)

puts jokes.sample
