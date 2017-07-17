class UserRegister
  attr_reader :register

  def initialize
    @register = {}
  end

  def register_user_id(number_of_registers)
    id_list = []

    puts number_of_registers.to_i > 1 ? "Please, introduce #{number_of_registers} ids: "
             : "Please, introduce #{number_of_registers} id: "

    number_of_registers.times do |id_number|
      print "Id ##{(id_number + 1)}(only numbers between 1 and 100): "
      user_id = gets.chomp

      until valid_user_id?(user_id)
        puts "#{user_id} is not a valid one, please try again"
        print "Id ##{id_number}(only numbers between 1 and 100): "
        user_id = gets.chomp
      end

      id_list.push(user_id)

      @register.store('id', id_list)
    end
  end

  def register_user_name(number_of_registers)
    user_list = []

    puts number_of_registers.to_i > 1 ? "Please, introduce #{number_of_registers} names: "
             : "Please, introduce #{number_of_registers} name: "

    number_of_registers.times do |user_number|
      print "User name ##{(user_number + 1)}(the name must be written in lowercase): "
      user_name = gets.chomp

      until valid_user_name?(user_name)
        puts "#{user_name} is not a valid one, please try again"
        print "Id ##{user_number}(only numbers between 1 and 100): "
        user_name = gets.chomp
      end

      user_list.push(user_name)

      @register.store('name', user_list)
    end
  end


  def ids_start_with(number)
    @register['id'].select {|n| n.start_with?(number)}
  end

  def names_start_with(character)
    @register['name'].select {|name| name.start_with?(character)}
  end

  def the_id_belongs_to(id)
    case id.to_i
      when 1..25
        puts 'Group 1'
      when 26..50
        puts 'Group 2'
      when 51..75
        puts 'Group 3'
      when 76..100
        puts 'Group 4'
      else
        puts 'The id introduced is not a valid one!'
    end
  end

  def valid_user_id?(id)
    /^\d+$/.match(id) && id.to_i >= 1 && id.to_i <= 100 ? true : false
  end

  def valid_user_name?(name)
    /^[a-z]+(_[a-z]+)?$/.match(name) ? true : false
  end
end

user = UserRegister.new
user.register_user_id(5)
p user.register
p user.ids_start_with('1')
user.register_user_name(5)
p user.register
p user.names_start_with('d')
user.register_user_name(1)
p user.register
user.the_id_belongs_to('5')
user.the_id_belongs_to('50')
user.the_id_belongs_to('72')
user.the_id_belongs_to('100')
user.the_id_belongs_to('120')


