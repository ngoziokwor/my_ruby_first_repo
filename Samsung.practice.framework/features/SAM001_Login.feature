Feature: As a user I want to be able to login to Samsung Application

  Scenario: Login with valid credentials
    Given I am on  homepage
    When  I logon the the application with valid data
    Then I should see a message as John Hill

  Scenario: Login with invalid credentials
    Given I am on  homepage
    When  I logon the the application with invalid data
    Then I should see a message as Incorrect ID or password