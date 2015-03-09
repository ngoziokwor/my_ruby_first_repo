Feature: Number of passengers travelling.

  Scenario: As a user I want to be able to select the number of passengers travelling
    Given that I am valid user
    When I am on find flight
    Then I should be able to select number of adult(s)
    And the number of children
    And also the number of infants