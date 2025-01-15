Feature: Verify price beat features


  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify the price beat modal display the required details
    And I fill in the "search" input with "50076795"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "3" seconds
    And the "PriceBeat" should be displayed
    Then the "PriceBeat" should contain the text "Pay Less with PRICE BEAT"
    And I click the "PriceBeat" button
    And the "PriceBeatDialog" should be displayed
    And the "PriceBeatImage" should be displayed
    And the "PriceBeatPrice" should be displayed


  @dev
  Scenario: Verify that user can add the product from the cart and can avail the price beat discount
    And I fill in the "search" input with "50076795"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "3" seconds
    And the "PriceBeat" should be displayed
    And I click the "PriceBeat" button
    And the "PriceBeatDialog" should be displayed
    And I click the "priceBeatAddToCart" button
    And the "miniCart" should be displayed
    And I wait "10" seconds
    And the "cartPBMessage" should contain the text "Pricebeat Discount -$"


  @dev
  Scenario: Verify that user will not get price beat discount when a product is added without using PB modal
    And I fill in the "search" input with "50076795"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "3" seconds
    And the "PriceBeat" should be displayed
    And I click the "PriceBeat" button
    And I click the "priceBeatClose" button
    And I click the "addToCart" button
    And I wait "3" seconds
    And the "cartPBMessage" should not be displayed


  @dev
  Scenario: Verify that the price beat product price is always less than actual product price is
    And I fill in the "search" input with "50076795"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "3" seconds
    And the "PriceBeat" should be displayed
    And I retrieve the "pdpProductName" text and store it as "pdpProductName" in global variables
    And I retrieve the "pdpProductPrice" text and store it as "pdpProductPrice" in global variables
    And I click the "PriceBeat" button
    And the "priceBeatProductName" should equal the "pdpProductName" stored in global variables
    And the "PriceBeatPrice" amount should be less than the "pdpProductPrice" stored in global variables






