# Define an add_thirty_days method that accepts an array.
# The array will consist of strings representing a date.
# The dates will be in MM**DD**YYYY format (i.e. 12**02**2023).
# Add 30 days to each date.
# Return an array of strings with the new date in the
# same MM**DD**YYYY format.
#
# Examples:
# The => indicates the expected return value
#
# add_thirty_days(["05**28**2023", "09**12**1991", "02**08**2002"])
#  => ["06**27**2023", "10**12**1991", "03**10**2002"]
# add_thirty_days(["01**01**2023", "03**01**2025", "05**01**2027"])
#  => ["01**31**2023", "03**31**2025", "05**31**2027"]
require 'date'
require 'time'

def add_thirty_days(dates_arr)
  dates_arr.map do |date|
    parsed_date = Date.strptime(date, '%m**%d**%Y') + 30
    parsed_date.strftime('%m**%d**%Y')
  end
end

p add_thirty_days(["05**28**2023", "09**12**1991", "02**08**2002"])
#  => ["06**27**2023", "10**12**1991", "03**10**2002"]
p add_thirty_days(["01**01**2023", "03**01**2025", "05**01**2027"])
#  => ["01**31**2023", "03**31**2025", "05**31**2027"]

# вариант решение через Time object

def add_thirty_days(values)
  date_format = "%m**%d**%Y"
  thirty_days_of_seconds = 60 * 60 * 24 * 30 

  values.map do |value|
    time = Time.strptime(value, date_format)
    thirty_days_after = time + thirty_days_of_seconds
    thirty_days_after.strftime(date_format)
  end
end