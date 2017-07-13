# Practice.
class Seconds
  attr_reader :seconds

  def initialize(seconds)
    self.seconds = seconds
  end

  def perform_transformation
    return (@seconds / 60.0).to_i, (@seconds / 3600.0).to_i, (@seconds / 86400.0).to_i
  end

  def print_results
    minutes, hours, days = perform_transformation
    puts "There are approximately #{minutes} minutes in #{@seconds} seconds"
    puts "There are approximately #{hours} hours in #{@seconds} seconds"
    puts "There are approximately #{days} days in #{@seconds} seconds"
  end

  def seconds=(new_value)
    @seconds = new_value < 0 ? 60 : new_value
  end
end

seconds = Seconds.new(86400)
seconds.print_results
puts
seconds.seconds = 900005
seconds.print_results
