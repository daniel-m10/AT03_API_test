Given(/^I am in the Google main page$/) do
  puts 'You are in the Google main page'
end


When(/^I click "([^"]*)"$/) do |link_name|
  puts "You've clicked #{link_name} link."
end


Then(/^I am redirected to the "([^"]*)" page$/) do |page_name|
  puts "You are in the #{page_name} page."
end

Then(/^A window with some apps of Google are displayed\.$/) do
  puts 'Google apps were displayed!'
end


Then(/^A window with some setting options are displayed\.$/) do
  puts 'Setting options window has been displayed!'
end

Then(/^I am redirected to the Google main page of my country$/) do
  puts "You're in google.com.bo now!"
end

When(/^I use the value (.*) in the search field$/) do |value_for_the_search|
  puts "You've made a research using #{value_for_the_search}"
end

And(/^My the search parameter that appears in the search field is (.*)$/) do |value_for_the_search|
  puts "Results for #{value_for_the_search} has been displayed!"
end