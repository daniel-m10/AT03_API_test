Feature: Customer search
  In order to retrieve a total priced for a list of clients
  As a stakeholder
  I want to search a user through its name, ID and total price of purchase

  @outline
  Scenario Outline: Search for a customer:
    Given I established the connection with the DB
    When I search for a client using its "<name>", "<id>" and "<purchase>"
    Then the user should be found
    Examples:
      | name      | id   | purchase |
      | Daniel    | 001  | 500.0    |
      | Eustaquio | 010  | 200.0    |
      | Jimeno    | 100  | 400.0    |
      | Jacarando | 1000 | 850.0    |

  @normal
  Scenario: Search a specific customer:
    Given I established the connection with the DB
    When I search for a user called "Daniel" with the id "001"
    Then this user should be found
