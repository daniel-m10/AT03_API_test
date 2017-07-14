# Practice.
class PeopleRegistry
  def register_people
    @person_hash = {}
    print 'How much people will be registered? -> '
    length = gets.to_i

    length.times do |element|
      puts "Person number #{element}:"
      print 'name -> '
      key = gets.chomp
      print 'id -> '
      value = gets.chomp
      @person_hash.store(key.capitalize, value)
    end
  end

  def make_operations
    puts format('%s'.center(40, '-'), 'OPERATION')
    @person_hash.keys.each_index {|index| puts "Index #{index} -> #{ @person_hash.keys[index]}"}
    @person_hash.keys.map(&:upcase)
  end

  def say_goodbye
    puts format('%s'.center(40, '-'), 'GOODBYE')
    @person_hash.keys.each {|person| puts "Goodbye #{person}"}
  end

  def show_me_registered_people
    puts format('%s'.center(40, '-'), 'REGISTER')
    @person_hash.each {|key, value| puts "Key -> #{key} | Value -> #{value}"}
  end
end

register = PeopleRegistry.new
register.register_people
register.show_me_registered_people
p register.make_operations
register.say_goodbye
