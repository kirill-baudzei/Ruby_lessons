# parentheses_precedence. 
# порядок проверки условий

def auth_agent(agent_number, name, job_title)
  # agent_number is 007, name is James Bond
  # job_title is Secret Agent
  # скобки определяют какое выражние будет высчитываться первым
  if (agent_number == 007 && name == "James Bond") || job_title == "Secret Agent"
    puts "Acceess Granted"
    # - можно так проставить скобки, будет другое выражение
    # if agent_number == 007 && (name == "James Bond" || job_title == "Secret Agent")
    else 
      puts "Access Denied, #{name}"
  end
end

puts auth_agent("007", "Kirill", "Secret Agent") # Acceess Granted, так как условие ИЛИ выполнено, secret agent

puts auth_agent("007", "Kirill", "Cooker") # отказывает в доступе. работает else