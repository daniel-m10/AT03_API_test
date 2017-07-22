Feature: Shorthand validation

  Scenario: Making a validation for a zip_code, user_name and country
    Given the form page is displayed
    When I introduce a zip code equal to (123456)
    And (my_user_name) as user name
    And I set country to (Bolivia)
    Then all the steps references should not be highlighted

  Scenario: Making a validation for a zip_code, user_name and country
  but with incorrect values
    Given the form page is displayed
    When I introduce a zip code equal to (123456az)
    And (my_user_name  ) as user name
    And I set country to (Bolivia666)
    But I know that all introduced values are incorrect
    Then all the incorrect steps references will be highlighted