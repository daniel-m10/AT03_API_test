# Greetings.
module Greetings
  def say_hi
    puts 'Hi there!'
  end

  def say_good_morning
    puts 'Good morning, pals!'
  end

  def say_good_afternoon
    puts 'Good afternoon, guys and gals!'
  end

  def say_good_night
    puts 'Good night, sleep well!'
  end
end

# Farewells.
module Farewells
  def say_good_bye
    puts 'Good bye all!'
  end

  def say_see_you_later
    puts 'See you later!'
  end

  def say_take_care
    puts 'Take care my friend!'
  end
end

# class
class ModuleExample
  include Greetings
  include Farewells

  def print_say_hi
    say_hi
  end

  def print_take_care
    say_take_care
  end
end

module_example = ModuleExample.new
module_example.print_say_hi
module_example.print_take_care
module_example.say_good_bye
module_example.say_see_you_later
