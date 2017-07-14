# Practice.
class ExerciseFour
  attr_reader :user_hash

  def create_hash
    puts format('%s'.center(40, '-'), 'HASH CREATION')
    @user_hash = {}
    print 'Hash length? -> '
    length = gets.to_i

    length.times do |element|
      puts "Element #{element} for the hash:"
      print 'key -> '
      key = gets.chomp
      print 'value -> '
      value = gets.chomp
      user_hash.store(key, value)
    end
  end

  def print_hash_keys
    puts format('%s'.center(40, '-'), 'HASH KEYS')
    @user_hash.keys.each {|key| puts "Key: #{key}"}
  end

  def print_hash_values
    puts format('%s'.center(40, '-'), 'HASH VALUES')
    @user_hash.values.each {|value| puts "Value: #{value}"}
  end

  def print_hash
    puts format('%s'.center(40, '-'), 'HASH ELEMENTS')
    @user_hash.each {|key, value| puts "Key -> #{key} | Value -> #{value}"}
  end

  def key_exist?(key)
    puts format('%s'.center(40, '-'), 'IF KEY EXIST')
    puts @user_hash.key?(key) ? "The key #{key} exist!" : 'Key not found'
  end

  def value_exist?(value)
    puts format('%s'.center(40, '-'), 'IF VALUE EXIST')
    puts @user_hash.value?(value) ? "The value #{value} exist!" : 'Value not found'
  end
end

example = ExerciseFour.new
example.create_hash
example.print_hash_keys
example.print_hash_values
example.print_hash
example.key_exist?('age')
example.value_exist?('29')
