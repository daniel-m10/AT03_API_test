Feature: Google main page
  In order to validate the Google main page is working
  As a user
  I want to verify all the features are working as expected

  # Feature written by: Daniel Montecinos

  Background: All scenarios must start in the login page
    Given I am in the Google main page


  Scenario: 'Gmail' link in the Google main Page redirection us to
  the Gmail home page
    When I click "Gmail"
    Then I am redirected to the "Gmail" page

  Scenario: 'Images' link in the Google main Page redirection us to
  the Images searcher page
    When I click "Images"
    Then I am redirected to the "Images searcher" page

  Scenario: 'Google Apps' link in the Google main Page opens a window
  where some apps of Google are displayed
    When I click "Google apps"
    Then A window with some apps of Google are displayed.

  Scenario: 'Sign in' button in the Google main Page redirection us to the
  Sign in page.
    When I click "Sign in"
    Then I am redirected to the "Sign in" page

  Scenario: "I'm feeling lucky" button in the Google main page redirection us
  to the Search result page
    When I click "I'm feeling lucky"
    Then I am redirected to the "Search result" page

  Scenario: 'Advertisement' link in the Google main page redirection us
  to the Advertisement main page
    When I click "Advertisement"
    Then I am redirected to the "Advertisement" page

  Scenario: 'Business' link in the Google main page redirection us
  to the Business main page
    When I click "Business"
    Then I am redirected to the "Business" page

  Scenario: 'About' link in the Google main page redirection us
  to the About main page
    When I click "About"
    Then I am redirected to the "About" page

  Scenario: 'Privacy' link in the Google main page redirection us
  to the Privacy main page
    When I click "Privacy"
    Then I am redirected to the "Privacy" page

  Scenario: 'Terms' link in the Google main page redirection us
  to the Terms main page
    When I click "Terms"
    Then I am redirected to the "Terms" page

  Scenario: 'Settings' link in the Google main Page opens a window
  where some setting options are displayed
    When I click "Settings"
    Then A window with some setting options are displayed.

  Scenario: 'User Google.com.bo' link in the Google main page redirection us
  to the Google main page of our country
    When I click "User Google.com.bo"
    Then I am redirected to the Google main page of my country

  Scenario Outline: Make a search using different values in the Google search
  field
    When I use the value <value for the search> in the search field
    And I click "Google Search"
    Then I am redirected to the "Search result" page
    And My the search parameter that appears in the search field is <value for the search>

    Examples:
      | value for the search   |
      | ""                     |
      | 0                      |
      | What is Gherkin        |
      | 0123456789             |
      | -999999999             |
      | ~!@#$%^&*()_+[]{}'\  " |
      | 0.123456789            |
      | -0.123456789           |
      | 2+2                    |
      | 2-2                    |
      | 2^2                    |
      | 2%2                    |
      | \n\t\a                 |
      | what is gherkin        |
      | WHAT IS GHERKIN        |
      | †h!§ !§ @  †€§†        |