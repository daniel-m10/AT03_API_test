require '../assignment_two/person.rb'

# Class to calculate the person age expressed as a minutes.
class CalculateAge
  attr_reader :age_in_minutes

  def calculate_age_in_minutes(person)
    minutes_in_a_year = 525600
    @age_in_minutes = person.age * minutes_in_a_year
  end

  def to_s
    "You are #{@age_in_minutes} minutes old!!"
  end
end

def main
  print 'Introduce your name: '
  name = gets.chomp
  print 'Introduce your age: '
  age = gets.to_i
  person = Person.new(name, age)
  puts "Hi #{person}!"
  age_in_minutes = CalculateAge.new
  age_in_minutes.calculate_age_in_minutes(person)
  puts "#{age_in_minutes} Cool right?"
end

main
