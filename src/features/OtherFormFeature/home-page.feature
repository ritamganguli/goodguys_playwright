Feature: As a user I expect to be able to navigate to the home page

  Background:
    Given I am on the "home" page


  Scenario: As a user I should be able to verify home page
    And the "header logo" should be displayed



  Scenario: As a user I expect to be able to search products
    And I fill in the "userName" input with "ashasingh@thegoodguys.com.au"
    And I click the "ContinueWithEmail" button
    And I fill in the "Password" input with "Monday1298"
    And I click the "submit" button
    And the "header logo" should be displayed
    And the "priceBeat" should not be displayed
    Then the "priceBeat" should contain the text "Pay Less with PRICE BEAT"
    Then the "priceBeat" should equal the text "Pay Less with PRICE BEAT"
    Then the "priceBeat" should not contain the text "Pay Less highT"
    Then the "priceBeat" should not equal the text "Pay LessT"



