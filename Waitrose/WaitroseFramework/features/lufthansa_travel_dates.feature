Feature: Travel dates

  Scenario: As a valid user I want to be able to select departure and return dates
    Given I am Logged in
    And I select find flight
    Then I should be able to input departure date
    And also input a return date
