Feature: Processing orders placed via sales in the application

  Scenario: As a valid user I should be able to process customers orders
    Given I am logged in as a valid user
    When  I select orders via sales
    Then I should be able to process customers orders.