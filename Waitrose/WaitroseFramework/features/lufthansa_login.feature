Feature: Login to Lufthansa home page

 @regression
  Scenario: Check with valid credentials
    Given that I am on the home page
    When I complete my valid credentials
    And I click sign-on the application
    Then I should see a successful message



