# Practice.
class Client
  attr_reader :name, :customer_id

  def initialize(name, customer_id)
    @name = name
    @customer_id = customer_id
  end

  def print_greeting
    puts @customer_id > 100 ? "Hello #{@name.upcase} thanks to be our customer!" : "Hello #{@name.upcase} and thanks!"
  end
end

def main
  print 'Introduce name: '
  name = gets.chomp
  print 'Introduce customer_id: '
  id = gets.to_i

  client = Client.new(name, id)
  client.print_greeting

  puts "\n"

  print 'Introduce name: '
  name = gets.chomp
  print 'Introduce customer_id: '
  id = gets.to_i
  client_two = Client.new name, id
  client_two.print_greeting
end

main
