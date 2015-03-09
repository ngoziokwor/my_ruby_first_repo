Feature: As a valid user
  I want to be able to
  add new customer to the application

Scenario: Add a new customer to the application
  Given I am an authenticated user
  When I add a new customer to the application
  Then I should see the newly added customer
