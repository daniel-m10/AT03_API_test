# First.
class PersonExercise
  attr_reader :name
  attr_writer :greeting
  attr_reader :special_greeting

  def initialize(name, greeting, special_greeting)
    @name = name.capitalize
    @greeting = greeting.capitalize
    @special_greeting = special_greeting.downcase
  end

  def print_greeting
    puts "#{@greeting}, #{@name}"
  end

  def print_special_greeting
    puts "#{@name}, #{@special_greeting}"
  end

  def special_greeting=(new_greeting)
    @special_greeting = new_greeting.downcase
  end
end

person = PersonExercise.new('Daniel', "What's up!", 'Have a nice day!')
person.print_greeting
person.print_special_greeting
person.special_greeting = "Don't worry, be happy!"
person.print_special_greeting
