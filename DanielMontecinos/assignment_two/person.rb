# The class create a person object with the attributes name and age.
class Person
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name.capitalize
    self.age = age
  end

  def age=(new_age)
    @age = new_age >= 0 || new_age <= 120 ? new_age : 1
  end

  def to_s
    "#{@name} of #{@age} years old"
  end
end
