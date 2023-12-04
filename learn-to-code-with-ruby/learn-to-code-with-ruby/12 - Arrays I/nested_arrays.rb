# nested arrays. Это массивы , которые содержат массивы

# Column A, Column B
# Row Value, Row Value

spreadsheet = [ # массивы могут содержать массивы
  ["Student", "Class", "Grade"],
  ["Sally", "Computer Science", 95],
  ["Ingrid", "Physics", 45]
]

p spreadsheet

first_row, second_row, third_row = spreadsheet # каждый составной массив сделали переменной

p first_row
p second_row
p third_row