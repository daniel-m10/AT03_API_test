require '../assignment_two/common/match_only_numbers.rb'

# The class take a string, extract their numbers and return the number
# as a float one, if no number was not found in the string, the result is 0.
class PracticeTwo
  def self.change_to_float(number)
    MatchOnlyNumbers.match_numbers(number).to_f
  end
end

def main
  print "Give me a number and I'll give it you back as a float one: "
  number = gets.chomp
  puts "#{number} before the conversion was of type #{number.class}"
  number = PracticeTwo.change_to_float(number)
  puts "But now, it is a #{number.class} number: #{number}"
end

main
