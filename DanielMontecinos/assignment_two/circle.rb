# The class allows to create a new object of Circle type.
# If the user introduce an invalid radius this one will be set to zero.
class Circle
  attr_reader :radius

  def initialize(radius = 0)
    self.radius = radius
  end

  def calculate_perimeter
    @radius * 2 * Math::PI
  end

  def calculate_area
    @radius * @radius * Math::PI
  end

  def radius=(new_radius)
    @radius = new_radius >= 0 ? new_radius : 0
  end

  def print_properties
    puts '%s'.center(30, '-') % 'Circle'
    print '%s'.ljust(13, '.') % 'Circle radius'
    puts '%.2f'.rjust(5, ' ') % @radius
    print '%s'.ljust(10, '.') % 'Circle perimeter'
    puts '%.2f'.rjust(5, ' ') % calculate_perimeter
    print '%s'.ljust(15, '.') % 'Circle area'
    puts '%.2f'.rjust(5, ' ') % calculate_area
  end
end

def main
  print 'Introduce radius: '
  radius = gets.to_i
  circle_one = Circle.new(radius)
  circle_one.print_properties
end

main
