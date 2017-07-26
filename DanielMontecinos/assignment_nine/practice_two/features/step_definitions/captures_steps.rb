Given(/^I have thought to buy "(\d+)" apples? today$/) do |apples_to_buy|
  puts(
       if apples_to_buy.to_i > 1
         "I'd like to buy #{apples_to_buy} apples."
       else
         "I'd like to buy #{apples_to_buy} apple."
       end)
end

But(/^after check my "([a-z]+)", I realized that only have money to buy "(\d+)" apples?$/) do |container, apples|
  puts(
      if apples.to_i > 1
        "My #{container} told me: you have enough money to buy only #{apples} apples."
      else
        "My #{container} told me: you have enough money to buy only #{apples} apple."
      end)
end

Then(/^I'll (?:back|return) with more money$/) do
  puts "So caserita, I'll be back!!"
end