Feature: As a user
  I want to add item to cart
  so as to purchase the item

  Scenario: Check out Iphone 5 from cs cart application
    Given that I have searched for "Iphone 5"
    When I add "Iphone 5"
    Then Cart should contain "Checkout"


  Scenario: Check out xbox 360 from cs cart application
    Given that I have searched for "xbox 360"
    When I add "xbox 360"
    Then Cart should contain "Checkout"

