Given(/^a board like this$/) do |table|
  # table is a table.hashes.keys # => [:1, :2, :3]
  puts table
  @board = table.raw
end

When(/^player "([xy])" plays in row "(\d+)", column "(\d+)"$/) do |player, row, column|
  puts "Player #{player} made a movement"
  @board[row.to_i][column.to_i] = player
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a table.hashes.keys # => [:1, :2, :3]
  puts expected_table
  expected_table.diff!(@board)
end