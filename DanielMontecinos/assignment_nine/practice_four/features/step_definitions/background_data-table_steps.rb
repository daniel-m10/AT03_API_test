Given(/^that it is the "(?:0?\d+[:\.]0?\d+)" o'clock$/) do
  puts "It's time to wake up!"
end

And(/^my alarm clock rang$/) do
  puts 'Ring ring.........'
end

When(/^I stop my alarm clock, I do the following before go to the Foundation$/) do |activities|
  # table is a table.hashes.keys # => [:take a shower]
  my_activities = ['Take a shower', 'Comb my hair', 'Brush my teeth', 'I get dressed']
  index = 0

  puts "I'd should do the following activities: "

  activities.raw.join(',').split(',').each do |activity|
    expect(activity).to eql(my_activities[index])
    index += 1

    puts activity
  end

end