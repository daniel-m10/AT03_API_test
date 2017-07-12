class ExerciseTwo
  def self.arithmetic_operators_exercise(number1, number2)
    puts 'ARITHMETIC OPERATORS'
    puts "#{number1} + #{number2} will give #{number1 + number2}"
    puts "#{number1} - #{number2} will give #{number1 - number2}"
    puts "#{number1} * #{number2} will give #{number1 * number2}"
    puts "#{number1} / #{number2} will give
#{number2.zero? ? 0 : number1 / number2}"
    puts "#{number1} % #{number2} will give #{number1 % number2}"
    puts "#{number1} ** #{number2} will give #{number1**number2}"
  end

  def self.comparision_operators_exercise(number1, number2)
    puts 'COMPARISION OPERATORS'
    puts "#{number1} == #{number2} ? #{number1 == number2}"
    puts "#{number1} != #{number2} ? #{number1 != number2}"
    puts "#{number1} > #{number2} ? #{number1 > number2}"
    puts "#{number1} < #{number2} ? #{number1 < number2}"
    puts "#{number1} >= #{number2} ? #{number1 >= number2}"
    puts "#{number1} <= #{number2} ? #{number1 <= number2}"
    puts "#{number1} <=> #{number2} ? #{number1 <=> number2}"
    puts "Is 3 contained in (#{number1}..#{number2}) ?
          #{(number1..number2) === 3}"
    puts "If I take #{number1} of type #{number1.class} and I compared
          it with #{number2} after convert it to #{number2.to_s.class},
          are there still equals? #{number1.equal? number2.to_s}"
    puts "Does #{number1} have the same objectID of #{number2}?
          #{number1.eql? number2}"
  end

  def self.assignment_operators_exercise(number1, number2)
    puts 'ASSIGNMENT OPERATORS'
    puts "If number1 is #{number1} and number2 is #{number2} what would be the
            value of number1 after assigned the value of number2?
          number1 = #{number1 = number2}}"
    puts "#{number1} += #{number2} will give #{number1 += number2}"
    puts "#{number1} -= #{number2} will give #{number1 += number2}"
    puts "#{number1} *= #{number2} will give #{number1 *= number2}"
    puts "#{number1} /= #{number2} will give #{number1 /= number2}"
    puts "#{number1} %= #{number2} will give #{number1 %= number2}"
    puts "#{number1} ** #{number2} will give #{number1 **= number2}"
  end

  def self.logical_operators_exercise(number1, number2)
    puts 'LOGICAL OPERATORS'
    puts "#{number1} && #{number2}? #{number1 && number2}"
    puts "#{number1} || #{number2}? #{number1 || number2}"
    puts "#{number1} ! #{number2}? #{number1 && !number2}"
  end
end
ExerciseTwo.arithmetic_operators_exercise(rand(10) + 1, rand(10) + 11)
ExerciseTwo.comparision_operators_exercise(rand(10) + 1, rand(10) + 11)
ExerciseTwo.logical_operators_exercise(rand(10) + 1, rand(10) + 11)
