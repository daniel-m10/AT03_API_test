Given(/^the register form for a new user is open$/) do
  puts 'Inside given'
end

When(/^I fill the field username with "([^"]*)"$/) do |user_name|
  puts "User name is #{user_name}"
end

And(/^I focus to another field$/) do
  puts 'Inside "And"'
end

Then(/^I expect the "([^"]*)" field appears surrounded by a "([^"]*)" color$/) do |field, color|
  puts "Field is #{field}"
  puts "Color is #{color}"
end
