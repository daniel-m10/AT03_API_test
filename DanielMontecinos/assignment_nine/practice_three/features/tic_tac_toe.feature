Feature: Tic-Tac-Toe

  Scenario: Player x movement
    Given a board like this
      |   | 1 | 2 | 3 |
      | 1 |   |   |   |
      | 2 |   |   |   |
      | 3 |   |   |   |
    When player "x" plays in row "2", column "1"
    Then the board should look like this:
      |   | 1 | 2 | 3 |
      | 1 |   |   |   |
      | 2 | x |   |   |
      | 3 |   |   |   |

  Scenario: Player y movement
    Given a board like this
      |   | 1 | 2 | 3 |
      | 1 |   |   |   |
      | 2 | x |   |   |
      | 3 |   |   |   |
    When player "y" plays in row "2", column "2"
    Then the board should look like this:
      |   | 1 | 2 | 3 |
      | 1 |   |   |   |
      | 2 | x | y |   |
      | 3 |   |   |   |