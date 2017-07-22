Feature: Just a test for Alternation

  Scenario: Selecting Spanish as my display language
    Given I select (Spanish) as my preferred language display for my email page
    Then the language of my email should change

  Scenario: Selecting English as my display language
    Given I select (English) as my preferred language display for my email page
    Then the language of my email should change

  Scenario: Selecting German as my display language
    Given I select (Germany) as my preferred language display for my email page
    Then the language of my email should change

  Scenario: Selecting Portuguese as my display language
    # It won't match
    Given I select (Portuguese) as my preferred language display for my email page
    Then the language of my email should change