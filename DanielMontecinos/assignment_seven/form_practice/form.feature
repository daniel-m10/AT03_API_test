Feature: Form validation practice

  Background: Same precondition for all scenarios
    Given the form page is displayed

  Scenario: Make a validation of the following fields: first and last name
  username, password, month, day, year, gender, mobile phone, email.
    When I insert (daniel) as my first name and (montecinos) as my last name
    Then the form should not display any kind of error message

  Scenario: Make a validation of the password field
    When I choose (P@ssw0rd) as my password
    Then the form should not display any kind of error message

  Scenario: Make a validation of the following fields: month, day and year
    When I select my birthday date as (4/2/88)
    Then the form should not display any kind of error message

  Scenario: Make a validation of the gender field
    When I select (Male) from gender list
    Then the form should not display any kind of error message

  Scenario: Make a validation of the mobile phone
    When I set my mobile phone as ((+591) 77126720)
    Then the form should not display any kind of error message

  Scenario: Make a validation of an email address
    When I fill the email address field with (daniel.montecinos@fundacion-jala.org)
    Then the form should not display any kind of error message
