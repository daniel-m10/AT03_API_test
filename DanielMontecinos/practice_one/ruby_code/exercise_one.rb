=begin
This first class only have two methods:
* The first method is in charge to make some calculations.
* And the second one prints the results on the console.
=end

class ExerciseOne
  def self.do_calculations
    @bananas = 25 + 30 / 6
    @apples = 100 - 25 % 4
    @potatoes = 3 + 2 + 1 - 5 + 4 % 2 - 1 / 6
    @answer = 3 + 2 < 5 - 7
    @sum_result = 3 + 2
    @subtraction_result = 5 - 7
  end

  def self.print_results
    puts "Bananas: #{@bananas}"
    puts "Apples: #{@apples}"
    puts 'Now I will count the potato'
    puts @potatoes
    puts 'Is it true that 3 +2 < 5 -7 ?'
    puts @answer
    puts "What is 3 + 2? It is #{@sum_result}"
    puts "What is 5 - 7? It is #{@subtraction_result}"
  end
end
ExerciseOne.do_calculations
ExerciseOne.print_results

=begin
# The error displayed after try to print a variable that does no exist,
# makes a reference to the fact that is not possible use a variable
# with none value previously assigned.
=end
