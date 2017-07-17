class Users
  attr_reader :users_hash

  def initialize
    @user = 'Guest'
    @message = 'Welcome to the city'
    @visitors = 0
    @users_hash = {names: [@user], messages: [@message], visitors: @visitors}
  end

  def add_user
    print 'Introduce the name of the user: '
    @user = gets.chomp
    @users_hash[:names].push(@user)
    @users_hash[:visitors] += 1
  end

  def add_message
    print 'Introduce the message: '
    @message = gets.chomp
    @users_hash[:messages].push(@message)
  end
end

puts 'OBJECT INSTANTIATION'.center(40, '-')
user_one = Users.new
user_one.add_user
user_one.add_user
user_one.add_message
user_one.add_message

p user_one.users_hash

puts "The last user added is: #{user_one.users_hash[:names].last}"
puts "Amount of visitors: #{user_one.users_hash[:visitors]}"

puts '-' * 40

puts 'OBJECT INSTANTIATION'.center(40, '-')

user_two = Users.new
user_two.add_user
user_two.add_message

p user_two.users_hash

puts "The last user added is: #{user_two.users_hash[:names].last}"
puts "Amount of visitors: #{user_two.users_hash[:visitors]}"

puts '-' * 40

# Every time the class is instantiated the number of visitors is set to 0.
