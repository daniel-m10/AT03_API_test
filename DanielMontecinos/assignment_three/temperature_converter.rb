# Practice.
class TemperatureConverter
  attr_reader :degrees

  def initialize(degrees)
    self.degrees = degrees
  end

  def degrees=(new_degrees)
    @degrees = new_degrees >= 0 ? new_degrees : 0
  end

  def celsius_to_fahrenheit
    fahrenheit = ((9 * @degrees) / 5.0) + 32
    result = format('%s: %.2f fahrenheit degrees', "#{@degrees} celsius degrees are equivalent to", fahrenheit)
    result
  end

  def fahrenheit_to_celsius
    puts format('%s: %.2f celsius degrees', "#{@degrees} fahrenheit degrees are equivalent to", (5 * (@degrees - 32)) / 9.0)
  end
end

temperature_c = TemperatureConverter.new(100)
puts temperature_c.celsius_to_fahrenheit
temperature_c.fahrenheit_to_celsius

