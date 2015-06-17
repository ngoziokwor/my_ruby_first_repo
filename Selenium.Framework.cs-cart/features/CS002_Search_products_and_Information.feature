Feature: As a user
  I want to be able to
  search for products so that I can purchase

Background:
  Given I am on homepage


Scenario: Search for Iphone 5
  When I search for "Iphone 5"
  Then I should see "Apple - iPhone 5c 32GB Cell Phone - Green" and "$699.00"


Scenario: Search for HP 2711x 27 LED Monitor
  When I search for "HP"
  Then I should see "HP 2711x 27" LED Monitor" and "$299.99"


Scenario: Search for HP 2711x 27 LED Monitor
  When I search for "iPad"
  Then I should see "Apple® - iPad® with Retina® display" and "$499.00"


Scenario: Search for Shoes
  When I search for "Shoes"
  Then I should see "adizero Rush Shoes" and "$100.00"


Scenario: Search for Samsung
  When  I search for "Samsung"
  Then I should see "Samsung 30mm NX Pancake Lens" and "$299.99"


Scenario: Search for Fringe
  When I search for "Fringe"
  Then I should see "Fringe The Complete Third Season" and "$17.99"
