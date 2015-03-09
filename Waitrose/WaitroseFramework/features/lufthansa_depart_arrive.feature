Feature: Depart and Arrive

  Scenario: As a valid user I want to be able to select depart and arrive
    Given I am authenticated user
    When I click find on flight
    Then I should be able to select depart from
    And I should also select arrive at
