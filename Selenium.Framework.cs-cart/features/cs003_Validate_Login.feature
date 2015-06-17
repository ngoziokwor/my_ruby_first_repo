Feature: To validate Login functionality of the CSS Web application
  As a a customer
  I want to login to the application
  So I can validate the functionality


  Scenario: Validate with valid username and valid password
    Given that a customer is on the home page
    When the customer logs on with username as "customer@example.com" and password as "customer"
    Then the customer should see "Sign out"

  Scenario: Validate with invalid username and valid password
    Given that a customer is on the home page
    When the customer logs on with username as "invalid@example.com" and password as "customer"
    Then the customer should see "Sign in"

  Scenario: Validate with valid username and invalid password
    Given that a customer is on the home page
    When the customer logs on with username as "invalid@example.com" and password as "gvffjgjsdgf"
    Then the customer should see "Sign in"

  Scenario: Validate with invalid username and invalid password
    Given that a customer is on the home page
    When the customer logs on with username as "invalid@example.com" and password as "gvffjgjsdgf"
    Then the customer should see "Sign in"

  Scenario: Validate with no username and valid password
    Given that a customer is on the home page
    When the customer logs on with username as "" and password as "customer"
    Then the customer should see "Sign in"

  Scenario: Validate with no username and no password
    Given that a customer is on the home page
    When the customer logs on with username as "" and password as ""
    Then the customer should see "Sign in"

  Scenario: Validate with valid username and no password
    Given that a customer is on the home page
    When the customer logs on with username as "customer@example.com" and password as ""
    Then the customer should see "Sign in"

  Scenario: Validate with no username and invalid password
    Given that a customer is on the home page
    When the customer logs on with username as "" and password as "hfgjdvbvbkjh"
    Then the customer should see "Sign in"

  Scenario: Validate with invalid username and no password
    Given that a customer is on the home page
    When the customer logs on with username as "customer@kjdsgvbfk.com" and password as ""
    Then the customer should see "Sign in"

#  Scenario: Validate with valid username and valid password