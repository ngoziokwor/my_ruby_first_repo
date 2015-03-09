Feature: Clicking on find flight

       @regression
  Scenario: As a valid user I want to be able to click on find flights and see travel search on new page
    Given that I am authenticated user
    When I click on find flight
    Then I should see travel search.


 # Scenario: A valid user should be able to find multi-stop flights
    #Given that user is authenticated and on the multi flight

