class LoadTestingUtility

  def self.generate_list(number_of_elements)
    puts format('|%-15s|%-15s|%-15s|%-15s|', 'USER', 'PASSWORD', 'TRAVEL_DATE', 'DESTINATION')

    number_of_elements.times do |number|
      puts format('|%-15s|%-15s|%-15s|%-15s|', random_user(number),
                  random_password,
                  random_date,
                  random_destination)
    end
  end

  def self.random_user(number)
    "user_#{number}"
  end

  def self.random_password
    pass = []
    8.times {pass.push(rand(65..126).chr)}
    pass.join('')
  end

  def self.random_date
    "#{Time.at(rand * 100000000).month}/#{Time.at(rand * 100000000).day}/#{Time.now.year}"
  end

  def self.random_destination
    destination = %w[SUCRE SANTA_CRUZ TARIJA COCHABAMBA BENI PANDO POTOSI LA_PAZ ORURO]
    destination[rand(9)]
  end
end

LoadTestingUtility.generate_list(100)
