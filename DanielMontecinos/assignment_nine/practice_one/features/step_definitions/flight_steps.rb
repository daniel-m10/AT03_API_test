Given(/^the flight "((?=.*[A-Z])(?=.+\d).{1,})" is leaving today$/) do |flight|
  puts "The flight #{flight} is leaving today."
end
