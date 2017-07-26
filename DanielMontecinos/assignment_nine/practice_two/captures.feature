Feature: Captures practice

  Scenario: Question mark modifier for plural
    Given I have thought to buy "5" apples today
    But after check my "wallet", I realized that only have money to buy "1" apple
    Then I'll return with more money
