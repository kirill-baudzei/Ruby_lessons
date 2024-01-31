# keyword argument в классе


class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace
    
  def initialize(
    name:, 
    age:, 
    occupation: "Candidate", # будет по умолчанию, если не задать другое
    hobby: "Sport", 
    birthplace: "USA"
  )

    @name = name
    @age = age
    @occupation = occupation
    @hobby = hobby
    @birthplace = birthplace
  end
end
    
senator = Candidate.new(
  hobby: "Fishing",
  name: "Mr. Smith",
  age: 53,
  birthplace: "Kentucky"
)
  
p senator.hobby # "Fishing"
p senator.birthplace # "Kentucky"
p senator.name # "Mr. Smith"
p senator.occupation # "Candidate"