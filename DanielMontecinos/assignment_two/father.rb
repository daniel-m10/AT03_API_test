# Father class.
class Father
  attr_accessor :money
  attr_reader :name

  def initialize(name, money)
    @name = name.capitalize
    @money = money
  end

  def to_s
    "#{@name} you have $#{@money}"
  end
end

# Child class.
class Child
  attr_reader :money, :name

  def initialize(name, money)
    @name = name.capitalize
    @money = money
  end

  def take_money_from(father, quantity)
    if father.money >= quantity
      puts "Ok #{@name}, take this $#{quantity} and go away!"
      @money += quantity
      father.money -= quantity
    else
      puts "You're asking for much money that I have kid!"
    end
  end

  def to_s
    "#{@name}, you have $#{@money}"
  end
end

def main
  father_money = 1000
  father = Father.new('Mr. Money', father_money)
  child_one = Child.new('Kid_1', 0)
  child_two = Child.new('Kid_2', 100)

  until father.money.zero?
    puts "#{father.name}: Ok guys, I have #{father.money}, How much do you need?-> "
    print "#{child_one.name}: I need(put an amount of money)-> "
    amount = gets.to_f
    child_one.take_money_from(father, amount)
    puts("\n")
    print "#{child_two.name}: I need(put an amount of money)-> "
    amount = gets.to_f
    child_one.take_money_from(father, amount)
    puts("\n")
  end
  puts "That's all kids! I'm broke."
end

main
