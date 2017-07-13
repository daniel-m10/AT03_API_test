# Practice.
def make_operation
  puts '-' * 30
  puts 'Inside make operation method'
  yield(10, 50)
  puts 'The block was executed'
  puts '-' * 30
end

make_operation do |n1, n2|
  puts 'First block is executed:'
  puts "#{n1} + #{n2} is #{n1 + n2}"
end

make_operation do |n1, n2|
  puts 'Second block is executed:'
  puts "#{n1} - #{n2} is #{n1 - n2}"
end

make_operation do |n1, n2|
  puts 'Third block is executed:'
  puts "#{n1} * #{n2} is #{n1 * n2}"
end

make_operation do |n1, n2|
  puts 'Last block is executed:'
  puts n2.zero? ? 'Division by zero' : "#{n1} / #{n2} is #{n1 / n2.to_f}"
end


