# keyword UNLESS - обратное от выражение IF
# срабатывает когда в выражении false
# расшифрока except if - то есть исключая if
# то есть запусает код, исключая случай если условие true

password = "nonsense"

# actual password is "whiskers"

# if password != "whiskers"
#   puts "Incorrect password"
# else
#   puts "Welcome to the system"
# end

unless password == "whiskers" # execute the section of code is condition is false
  puts "Incorrect password"
  # This code will run unless the condition above is valid
end

# Check if the user's password does NOT include the letter "a"
# include?

unless password.include?("a") # execute if false
  puts "This will run UNLESS password does include 'a'"
end

