Feature: MUSH Launch
  We should be able to create a new player
  We should be able to choose an old player
  We should be able to quite

  Scenario: Quit the game
    Given I run `bhm` interactively
    When I type "(quit)"
    Then the exit status should be 0
