Feature: Testing valid and invalid login functionality
  Background:
    Given that I am on the home page


  Scenario: Check with valid credentials
    When I complete my valid credentials
    And I click sign-on the application
    Then I should see a successful message
    And I logout successfully


  Scenario: Check with invalid credentials
    When I complete my invalid credentials
    And I click sign-on the application
    Then I should see as unsuccessful message