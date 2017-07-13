# Practice.
class Ticket
  attr_accessor :name, :destination, :price

  def initialize(name, price, destination = 'CBBA')
    @name = name
    @price = price
    @destination = destination.upcase
  end

  def perform_calculation_on_ticket
    @price /= 6.9
  end

  def print_ticket_resume
    perform_calculation_on_ticket
    "Name: #{@name}\nTicket price: $#{@price.round}\nDestination: #{destination}"
  end
end

client_one = Ticket.new 'Daniel', 80
puts client_one.print_ticket_resume

puts '-' * 20

client_two = Ticket.new 'Daniel', 150 , 'scr'
puts client_two.print_ticket_resume
