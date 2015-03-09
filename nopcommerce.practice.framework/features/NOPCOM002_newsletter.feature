Feature: Search for Newsletter subscribers on the application

  Scenario: As a valid user I want to search for customers subscribed for Newsletter
    Given I am logged on as a valid user
    When I select Newsletter via promotions
    Then I should be able to search with customers email address