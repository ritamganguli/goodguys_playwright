Feature: Verify the sticky menu feature on Product display page


  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify the sticky menu feature on Product display page
    And I fill in the "search" input with "50080665"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    #And I click the "7th" "product" button
    And I wait "3" seconds
    And I am directed to the "productDisplay5" page
    And I scroll to the "termsAndConditions"
    And I wait "3" seconds
    And the "stickyMenu" should be displayed
    And the "stickyPrice" should be displayed


  @dev
  Scenario: Verify that user can get rid of sticky menu feature on Product display page
    And I fill in the "search" input with "50076795"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    #And I click the "7th" "product" button
    And I wait "3" seconds
    And I am directed to the "productDisplay5" page
    And I scroll to the "termsAndConditions"
    And I wait "3" seconds
    And the "stickyMenu" should be displayed
    And the "stickyPrice" should be displayed
    And the "stickyProductName" should be displayed
    And the "stickyProductImage" should be displayed
    And I click the "backToTopButton" button
    And I wait "3" seconds


  @dev
  Scenario: Verify that user can add product in cart from sticky menu feature on Product display page
    And I fill in the "search" input with "50080665"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    #And I click the "7th" "product" button
    And I click the "firstProduct" name
    And I wait "3" seconds
    And I am directed to the "productDisplay5" page
    And I scroll to the "termsAndConditions"
    And I wait "3" seconds
    And the "stickyMenu" should be displayed
    And the "stickyPrice" should be displayed
    And I click the "stickyAddToCart" button
    And I wait "3" seconds