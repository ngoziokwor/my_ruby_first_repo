Feature: Login with valid credentials

  Scenario: As a user I want to login successfully
    Given I am on homepage of Seotoaster application
    When I login with valid credentials
    Then I should see a welcome message