require '../ruby_test/exercise_one.rb'
require 'singleton'

$logger = File.open('execution.log', 'a')
$logger.write("#{('-' * 40)}\n")
$logger.write("Project execution began at: #{Time.now}\n")
$logger.write("#{('-' * 80)}\n")

class Registration
  include Conversion
  include Singleton
  attr_accessor :user_name, :user_id, :user_hash

  def initialize
    @user_hash = {}
    @id = []
    @name = []
  end

  def ask_for_user_information
    print 'How many users will be registered?(at least 3, no more than 11): '
    quantity = gets.to_i
    print_logger_time
    $logger.write("How many users will be registered?: #{quantity}\n")

    until quantity >= 3 && quantity <= 11
      print "#{quantity} is not a correct value"
      print 'How many users will be registered?(at least 3, no more than 11): '
      quantity = gets.to_i
      $logger.write("How many users will be registered?: #{quantity}\n")
    end

    quantity.times do |user_number|
      puts "User #{(user_number + 1)} information"
      print 'Enter user id: '
      usr_id = gets.chomp
      print_logger_time
      $logger.write("Enter user id: #{usr_id}\n")
      @id << usr_id
      print 'Enter user name: '
      usr_name = gets.chomp
      print_logger_time
      $logger.write("Enter user name: #{usr_name}\n")
      until validate_name(usr_name)
        puts 'Invalid user name, try again'
        print 'Enter user name: '
        usr_name = gets.chomp
        print_logger_time
        $logger.write("Enter user name: #{usr_name}\n")
      end
      @name << usr_name
      @user_hash[:id] = @id
      @user_hash[:name] = @name
    end
  end

  def give_me_amount_of_users
    puts "There are #{@user_hash[:name].count} user/s registered!."
    print_logger_time
    $logger.write("There are #{@user_hash[:name].count}user/s registered!.\n")
  end

  def choose_a_conversion_method
    puts 'We have the following options:'
    puts 'a) From millimeters to centimeters'
    puts 'b) From centimeters to meters'
    puts 'c) From meters to Kilometers'

    print 'Select one option please(a/b/c): '
    option = gets.chomp.downcase
    print_logger_time
    $logger.write("Select one option please(a/b/c): #{option}\n")
    option
  end

  def make_a_conversion(usr_option)
    case usr_option
      when 'a'
        print 'Introduce the number in millimeters: '
        number = gets.to_i
        print_logger_time
        $logger.write("Introduce the number in millimeters: #{number}\n")
        r = Conversion.millimeters_to_centimeters(number)
        print_logger_time
        $logger.write("#{number} millimeters represent #{r}cm.\n")
        print "#{number} millimeters represent #{r}cm.\n"
      when 'b'
        print 'Introduce the number in centimeters: '
        number = gets.to_i
        print_logger_time
        $logger.write("Introduce the number in centimeters: #{number}\n")
        r = Conversion.centimeters_to_meters(number)
        print_logger_time
        $logger.write("#{number} centimeters represent #{r}m.\n")
        print "#{number} centimeters represent #{r}m.\n"
      when 'c'
        print 'Introduce the number in meters: '
        number = gets.to_i
        print_logger_time
        $logger.write("Introduce the number in meters: #{number}\n")
        r = Conversion.meters_to_kilometers(number)
        print_logger_time
        $logger.write("#{number} meters represent #{r}Km.\n")
        print "#{number} meters represent #{r}Km.\n"
      else
        puts 'Invalid option!'
    end
  end

  def ask_for_conversion
    no_calculation = []
    @user_hash[:name].each do |user_name|
      print "User #{user_name}, do you want to perform a calculation?(YES/NO): "
      answer = gets.chomp.upcase
      print_logger_time
      $logger.write("User #{user_name}, do you want to perform a calculation?(YES/NO): #{answer}\n")

      if answer.eql?('YES')
        result = make_a_conversion(choose_a_conversion_method)
        print_logger_time
        $logger.write("Result: #{result}\n")
      else
        puts "Goodbye #{user_name}!!"
        print_logger_time
        $logger.write("Goodbye #{user_name}!!\n")
        no_calculation << user_name
      end
    end
    puts "The following users didn't perform a calculation:"
    no_calculation.each_index {|index| puts "#{(index + 1)}: #{no_calculation[index]}"}
    print_logger_time
    $logger.write("The following users didn't perform a calculation: #{no_calculation}\n")
  end

  def validate_name(user_name)
    user_name =~ /^(?=.*[a-z]|.*\d).{1,11}$/
  end

  def print_logger_time
    $logger.write("#{Time.now}: \n")
  end
end

puts 'INSTANTIATION'.center(40, '-')
registration_one = Registration.instance
puts '-' * 40
puts 'REGISTRATION'.center(40, '-')
registration_one.ask_for_user_information
puts '-' * 40
puts 'AMOUNT OF USERS'.center(40, '-')
registration_one.give_me_amount_of_users
puts '-' * 40
puts 'CONVERSION'.center(40, '-')
registration_one.ask_for_conversion
puts '-' * 40

$logger.write("#{('-' * 80)}")
$logger.close
