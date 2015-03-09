Feature: Login to apple homepage and login page

  Scenario: As a user I should be able to navigate to homepage and login successfully.
    Given that I am on the home page
    When I complete my valid credentials
    And I click sign-on the application
    Then I should see a successful message




