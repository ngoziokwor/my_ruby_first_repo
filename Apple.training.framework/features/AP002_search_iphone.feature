Feature: As a logged on user,
  I want to search for Iphone
  so as to see their corresponding results



  Scenario: Searching for iphone 6
    Given that I am logged on the application
    When I search "iPhone 6 128GB Gold" on the application
    Then I should see result as "iPhone 6 Plus 128GB"


  Scenario: Search iphone 6 plus
    When I search "iphone 6 plus" on the application
    Then I should see "iPhone 6 Plus 64GB"
    And I shall also see a second result "iPhone 6 Plus 128GB"
    And I shall also see a third result "iPhone 6 Plus 16GB"

