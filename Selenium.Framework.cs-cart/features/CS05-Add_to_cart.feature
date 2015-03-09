Feature: As a user
  I want to add item to cart
  so as to purchase tv

  Scenario: Check out plasma tv from cs cart application
    Given that I have searched for "Iphone 5"
    When I add "Iphone 5"
    Then Cart should contain "Checkout"