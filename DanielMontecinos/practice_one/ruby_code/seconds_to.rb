class SecondsTo
  attr_reader :seconds

  def initialize(seconds)
    self.seconds = seconds
  end

  def seconds_to_minutes
    "There are approximately #{(@seconds / 60.0).to_i} minutes is #{@seconds} seconds"
  end

  def seconds_to_hours
    "There are approximately #{(@seconds / 3600.0).to_i} hours is #{@seconds} seconds"
  end

  def seconds_to_days
    "There are approximately #{(@seconds / 86400.0).to_i} days is #{@seconds} seconds"
  end

  def seconds=(new_value)
    @seconds = new_value < 0 ? 60 : new_value
  end
end

seconds_to = SecondsTo.new(86400)
puts seconds_to.seconds_to_minutes
puts seconds_to.seconds_to_hours
puts seconds_to.seconds_to_days
puts
seconds_to.seconds = 900005
puts seconds_to.seconds_to_minutes
puts seconds_to.seconds_to_hours
puts seconds_to.seconds_to_days
