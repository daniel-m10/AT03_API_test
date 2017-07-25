Before('@outline') do
  puts "I'm running an outline scenario"
end

Before('@normal') do
  puts "I'm running a normal scenario"
end

After('@outline') do
  puts "I've finished running the outline scenario"
end

After('@normal') do
  puts "I've finished running the normal scenario"
end

Before('@outline', '@normal') do
  puts 'CUSTOMER SEARCH TEST'
end

Before('@outline', '~@normal') do
  puts 'SEARCHING.....'
end