Feature: validate search functionality along side the data in the database
  As a customer
  I want to search for item or product
  so that I can verify name and price

Background:
  Given I am on homepage

Scenario Outline: validate search feature of the application for various products
  When I search for "<item>"
  Then I should see "<full_item_name>" and "<price>"

  Examples:

  |item           |full_item_name                                   |price    |
  |Iphone 5       |Apple - iPhone 5c 32GB Cell Phone - Green        |$699.00  |
  |HP             |P 2711x 27" LED Monitor                          |$299.99  |
  |iPad           |Apple® - iPad® with Retina® display              |$499.00  |
  |Shoes          |adizero Rush Shoes                               |$100.00  |




#
#Scenario: Search for HP 2711x 27 LED Monitor
#  When I search for "HP"
#  Then I should see "HP 2711x 27" LED Monitor" and "$299.99"


#Scenario: Search for HP 2711x 27 LED Monitor
#  When I search for "iPad"
#  Then I should see "Apple® - iPad® with Retina® display" and "$499.00"


#Scenario: Search for Shoes
#  When I search for "Shoes"
#  Then I should see "adizero Rush Shoes" and "$100.00"


#Scenario: Search for Samsung
#  When  I search for "Samsung"
#  Then I should see "Samsung 30mm NX Pancake Lens" and "$299.99"
#
#
#Scenario: Search for Fringe
#  When I search for "Fringe"
#  Then I should see "Fringe The Complete Third Season" and "$17.99"
#
#
# Scenario: Search for TV
#    When I search for "TV"
#    Then I should see "Sony" and "$17.99"