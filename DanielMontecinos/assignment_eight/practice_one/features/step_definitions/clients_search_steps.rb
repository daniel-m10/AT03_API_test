require 'singleton'

class Clients
  include Singleton

  attr_reader :name_id, :id_total_purchase

  def initialize
    @name_id = {
        :'001' => 'Daniel',
        :'010' => 'Eustaquio',
        :'100' => 'Jimeno',
        :'1000' => 'Jacarando'
    }

    @id_total_purchase = {
        :'001' => 500.0,
        :'010' => 200.0,
        :'100' => 400.0,
        :'1000' => 850.0
    }
  end
end

Given(/^I established the connection with the DB$/) do
  @clients = Clients.instance
end


When(/^I search for a client using its "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |name, id, purchase|
  @first_response = @clients.name_id.key?(id.to_sym) && @clients.name_id.value?(name)
  @second_response = @clients.id_total_purchase.key?(id.to_sym) && @clients.id_total_purchase.value?(purchase.to_f)

  @founded = @first_response && @second_response
end

Then(/^the user should be found$/) do
  expect(@founded).to be true
end

When(/^I search for a user called "([^"]*)" with the id "([^"]*)"$/) do |name, id|
  @response = @clients.name_id.key?(id.to_sym) && @clients.name_id.value?(name)
end

Then(/^this user should be found$/) do
  expect(@response).to be true
end