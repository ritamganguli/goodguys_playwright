Feature: Verify store availability features


  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify that preferred store is displayed in the store availability section
    And I wait "3" seconds
    And I fill in the "search" input with "50080665"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay5" page
    And I wait "10" seconds
    And I click the "checkOtherStores" link
    And I wait "3" seconds
    And the "preferredStore" should be displayed



  @dev
  Scenario: Verify that other stores nearby is displayed in store availability section
    And I wait "3" seconds
    And I fill in the "search" input with "50080665"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay5" page
    And I wait "10" seconds
    And I click the "checkOtherStores" link
    And I wait "3" seconds
    And the "otherStoresDisplayed" should be displayed
    And the "store1" should be displayed
    And the "store2" should be displayed
    And the "store3" should be displayed
    And the "store4" should be displayed
    And the "store5" should be displayed
    And the "store6" should be displayed


  @dev
  Scenario: Verify that user can select the other stores from the listed nearby stores displayed in store availability section
    And I wait "3" seconds
    And I fill in the "search" input with "50080665"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay5" page
    And I wait "10" seconds
    And I click the "checkOtherStores" link
    And I wait "3" seconds
    And the "otherStoresDisplayed" should be displayed
    And the "store1" should be displayed
    And I click the "setAsStore" button
    And I wait "3" seconds