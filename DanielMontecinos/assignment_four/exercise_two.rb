# Practice.
class ExerciseTwo
  def create_user_array
    print 'Array length? -> '
    length = gets.to_i
    user_array = []
    puts 'Please insert the values for the array:'

    length.times do |index|
      print "Value at index #{index} -> "
      user_array.push(gets.chomp)
    end
    user_array
  end

  def print_user_array(array)
    array.each_index { |index| puts "Element at index #{index}: #{array[index]}"}
  end
end

exercise = ExerciseTwo.new
p new_array = exercise.create_user_array
exercise.print_user_array(new_array)
