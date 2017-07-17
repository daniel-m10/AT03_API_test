require 'singleton'

class OnlineShopping

  include Singleton

  def initialize
    @items_to_buy = 0
    @items = {
      cellphones: {
        samsung: {
          model: 'J7',
          price: 150,
          quantity: 50
        },
        alcatel: {
          model: 'Pop5',
          price: 110,
          quantity: 100
        }
      }
    }
    @total_cost = 0.0
  end

  def buy_cellphone
    puts 'CellPhones for sale'.center(80, '-')
    print_items_in_store

    print 'Please, select one cellphone to buy: '
    cellphone = gets.chomp.downcase

    print 'Introduce the quantity: '
    @items_to_buy = gets.to_i

    if cellphone.eql?('samsung')
      @total_cost = calculate_price(cellphone, @items_to_buy)
      update_items(cellphone, @items_to_buy)
    elsif cellphone.eql?('alcatel')
      @total_cost = calculate_price(cellphone, @items_to_buy)
      update_items(cellphone, @items_to_buy)
    else
      puts 'Invalid cellphone'
    end

    print_details(cellphone, @total_cost)
  end

  def print_details(cellphone, total_cost)
    puts 'INVOICE RESUME'.center(40, '-')
    puts "Cellphone bought: #{cellphone.capitalize}\nTotal to pay: #{total_cost}"
  end

  def update_items(cellphone, items_bought)
    @items[:cellphones][cellphone.to_sym][:quantity] -= items_bought
  end

  def calculate_price(cellphone, quantity)
    format('$%.2f', @items[:cellphones][cellphone.to_sym][:price] * quantity)
  end

  def print_items_in_store
    puts 'ITEMS'.center(40, '-')
    puts "Samsung:"
    @items[:cellphones][:samsung].each {|key, value| puts "#{key}: #{value}"}
    puts '-' * 40
    puts "Alcatel:"
    @items[:cellphones][:alcatel].each {|key, value| puts "#{key}: #{value}"}
    puts '-' * 40
  end
end

user_one = OnlineShopping.instance
user_one.buy_cellphone
user_one.print_items_in_store

user_two = OnlineShopping.instance
user_two.buy_cellphone
user_two.print_items_in_store
