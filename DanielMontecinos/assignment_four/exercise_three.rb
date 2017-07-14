# Practice.
class ExerciseThree
  def method_one
    print 'Array number length? -> '
    length = gets.to_i
    array_number = []
    puts 'Please insert numbers for the array:'

    length.times do |index|
      print "Value at index #{index} -> "
      array_number.push(gets.to_i)
    end

    print 'Array characters length? -> '
    length = gets.to_i
    array_letters = []
    puts 'Please insert numbers for the array:'

    length.times do |index|
      print "Value at index #{index} -> "
      array_letters.push(gets.chomp)
    end
    return array_number, array_letters, array_number + array_letters
  end

  def method_two(array_one, array_two)
    common_array = array_one & array_two

    common_array.each_index {|index| puts "Common element ##{(index + 1)} -> #{common_array[index]}"}

    puts "First element array one: #{array_one.first}"
    puts "First element array two: #{array_two.first}"
    puts "Last element array one: #{array_one.last}"
    puts "Last element array two: #{array_two.last}"
  end

  def method_three(array_one, array_two)
    array_one.shift

    array_two.pop

    array_one & array_two
  end

  def method_four(array)
    array.each_index {|index| puts "Element at index #{index} -> #{array[index]}"}
  end
end

exercise = ExerciseThree.new
p exercise.method_one
p exercise.method_two([1, 3], [1, 2, 5])
p array_method_three = exercise.method_three([1, 2, 3, 4, 'a'], [5, 1, 2, 3, 'a'])
exercise.method_four(array_method_three)
