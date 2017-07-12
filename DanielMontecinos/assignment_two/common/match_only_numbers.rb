# The class is in charge to match only numbers in a given string.
class MatchOnlyNumbers
  def self.match_numbers(number)
    number.gsub(/[^\d]/, '').to_i
  end
end
