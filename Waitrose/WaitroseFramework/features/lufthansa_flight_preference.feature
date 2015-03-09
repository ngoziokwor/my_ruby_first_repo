Feature: select flight preference-round trip or one way

  Scenario: As a valid user I want to be able to select either round trip or one way
    Given I am a valid user
    When I click find flight
    And I select on one way
    Then I should also be able to select on round trip
