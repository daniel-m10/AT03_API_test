module Conversion
  def self.millimeters_to_centimeters(number_in_millimeters)
    number_in_millimeters / 10.0
  end

  def self.centimeters_to_meters(number_in_centimeters)
    number_in_centimeters / 100.0
  end

  def self.meters_to_kilometers(number_in_meters)
    number_in_meters / 1000.0
  end
end
