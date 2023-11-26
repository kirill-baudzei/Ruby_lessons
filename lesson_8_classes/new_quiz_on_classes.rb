require 'yaml'

class FileWriter
  def initialize(filename, mode)
    @filename = filename
    @mode = mode
  end

  def write(content)
    File.write(
      @filename,
      content,
      mode: @mode
    )
  end
end

class Questions
  def initialize(filename)
    @filename = filename
  end

  def load
    return YAML.safe_load_file(@filename, symbolize_names: true)
  end
end

a_code = 'A'.ord
correct_answers = 0
incorrect_answers = 0

puts "Введите ваше имя:"
name = gets.strip

current_time = Time.now.strftime('%Y-%m-%d')

filename = "QUIZ_#{name}_#{current_time}.txt"

writer = FileWriter.new(filename, 'a')

writer.write("Результаты для пользователя #{name}\n\n#{current_time}")

questions = Questions.new('questions.yml')
questions_data = questions.load.shuffle
total_questions = questions_data.length

questions_data.each do |question_data|
  formatted_question = "\n\n=== #{question_data[:question]} ===\n\n"
  puts formatted_question

  writer.write(formatted_question)

  correct_answer = question_data[:answers].first

  answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
    answer_char = (a_code + i).chr
    result[answer_char] = answer

    puts "#{answer_char}. #{answer}"
    result
  end

  user_answer_char = nil

  loop do
    puts 'Ваш ответ:'
    user_answer_char = gets.strip[0]
    if user_answer_char.between?('A', 'D')
      break
    else
      puts "Ответ только A - D"
    end
  end

  writer.write("Ответ пользователя: #{answers[user_answer_char]}\n\n")

  if answers[user_answer_char] == correct_answer
    puts "Верно!"
    correct_answers = correct_answers + 1

    writer.write("Верный ответ!")
  else
    puts 'Неверно!'
    puts "Правильный ответ: #{correct_answer}"
    incorrect_answers = incorrect_answers + 1

    writer.write("Неверный ответ! Правильный ответ: #{correct_answer}")
  end
end

correct_answer_percentage = (correct_answers / total_questions.to_f) * 100

writer.write("\n\nПравильных ответов: #{correct_answers}\n\n")
writer.write("\n\nНеправильных ответов: #{incorrect_answers}\n\n")
writer.write("\n\nПроцент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n")

