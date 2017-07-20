Feature: Validate a username for a new user
  In order to register myself in this web page
  As a new user
  I want to use only lowercase letters for my user name

  # Feature written by: Daniel Montecinos

  Background: This step is a common one for both scenarios.
    Given the register form for a new user is open

  Scenario: Write a valid username
    When I fill the field username with "my_username"
    And I focus to another field
    Then I expect the "username" field appears surrounded by a "green" color

  Scenario: Write an invalid username.
    When I fill the field username with "My_username_0019"
    And I focus to another field
    Then I expect the "username" field appears surrounded by a "red" color
