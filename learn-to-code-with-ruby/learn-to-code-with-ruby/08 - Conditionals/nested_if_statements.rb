# nested_if_statements - операторы if в операторе if

# | Time of Week | Time of Day | Meal            |
# |--------------|-------------|-----------------|
# | weekday      | morning     | Cereal          |
# | weekday      | night       | Chicken nuggets |
# | weekend      | morning     | French Toast    |
# | weekend      | night       | Steak           |

def meal_plan(time_of_week, time_of_day) # если описывать каждое условие выше, то будет большой код.
    if time_of_week == "weekday"
      if time_of_day == "morning" # можем вкладывать if внутрь другого if
        "Cereal"
      elsif time_of_day == "night"
        "Chicken nuggets"
      end
    elsif time_of_week == "weekend" # elsif от первого главного if
      if time_of_day == "morning"
        "French Toast"
      elsif time_of_day == "night"
        "Steak"
      end
    end
  end
  
  puts meal_plan("weekday", "morning")
  puts meal_plan("weekday", "night")
  puts meal_plan("weekend", "night")