Feature: Verify the mini cart


  Background:
    Given I am on the "home" page


  @dev
  Scenario: As a user can remove any product from the cart
    And I fill in the "search" input with "television"
    And I wait "1" seconds
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "5th" "product" button
    And I am directed to the "productDisplay12" page
    And I click the "addToCart" button
    And I wait "5" seconds
    And I click the "removeProduct" button
    And I wait "3" seconds
    And the "cartRemoveText" should contain the text "Looks like you haven’t added anything yet, let’s get you started!"


  @dev
  Scenario: As a user can close the cart
    And I fill in the "search" input with "television"
    And I wait "1" seconds
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "5th" "product" button
    And I am directed to the "productDisplay12" page
    And I click the "addToCart" button
    And I wait "5" seconds
    And I click the "closeCart" button
    And I wait "3" seconds



  Scenario: User should get the error message for more than three products added
    And I fill in the "search" input with "television"
    And I wait "1" seconds
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "5th" "product" button
    And I am directed to the "productDisplay12" page
    And I click the "addToCart" button
    And I wait "5" seconds
    And I click the "increaseCount" button
    And I wait "3" seconds
    And I click the "increaseCount" button
    And I wait "3" seconds
    And I click the "increaseCount" button
    And I wait "3" seconds



  Scenario: As a user can increase and decrease the product count in miniCart
    And I fill in the "search" input with "television"
    And I wait "1" seconds
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "5th" "product" button
    And I am directed to the "productDisplay12" page
    And I click the "addToCart" button
    And I wait "5" seconds
    And I click the "increaseCount" button
    And I wait "3" seconds
    And I click the "increaseCount" button
    And I wait "3" seconds
    And I click the "increaseCount" button
    And I wait "3" seconds
    And the "limitErrorMessage" should be displayed