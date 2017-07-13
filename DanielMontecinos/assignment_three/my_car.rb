# Practice.
class MyCar
  attr_reader :year, :model, :current_speed
  attr_accessor :color

  def initialize(year, model, color)
    @current_speed = 0
    @year = year
    @model = model
    @color = color
    @is_on = false
  end

  def turn_on_car
    if @is_on
      puts 'The car is already on!'
    else
      puts 'Turning the car on!'
      @is_on = true
    end
  end

  def shut_down_car
    if @is_on
      puts 'The car is off now!'
      @is_on = true
    else
      puts 'The car is already off!'
    end
  end

  def speed_up(number)
    @current_speed += number if number > @current_speed
    puts "You accelerate to #{number} mph."
  end

  def apply_brakes(intensity='low')
    intensity.eql?('low') ? @current_speed -= 10 : @current_speed = 0
  end

  def to_s
    "Model: #{@model}\nColor: #{@color}\nYear: #{@year}\nCurrent Speed: #{@current_speed}"
  end
end

car = MyCar.new(2015, 'EcoSport', 'Black')
puts car
car.shut_down_car
car.turn_on_car
car.speed_up(100)
puts car
car.apply_brakes('high')
car.shut_down_car
puts car
