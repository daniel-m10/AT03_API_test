require '../assignment_two/common/match_only_numbers.rb'

# The class take a string, extract their numbers and return the number
# multiplied by a random number between 10 and 1000, if no number was not found
# in the string, the result is 0.
class PracticeOne
  def self.make_number_big(number)
    random_multiplier = (rand(100) + 1) * 10
    number * random_multiplier
  end
end

def main
  puts 'The result of the script will be the number you introduce multiplied by a random number between 10 a 1000'
  print('Introduce a number: ')
  number = gets
  number = MatchOnlyNumbers.match_numbers(number)
  bigger = PracticeOne.make_number_big(number)
  puts "#{number} is now #{bigger}"
  puts bigger > 1000 ? 'Really big, huh?' : "Not so big, isn't it?"
end

main
