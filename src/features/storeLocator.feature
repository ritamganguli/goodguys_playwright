Feature: As a user I should be able to set the preferred store

  Background:
    Given I am on the "home" page

  @dev
  Scenario: As a user I should be able to verify the preferred store details
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And the "preferredStore" should be displayed
    And I click the "storeName" link
    And I wait "5" seconds
    And I click the "viewStoreDetails" button
    And I wait "2" seconds
    And I am directed to the "selectedStore" page
    And I wait "2" seconds
    And the "storeHeader" should be displayed
    And the "storeAddress" should be displayed
    And the "getDirectionsLink" should be displayed
    And the "storeContact" should be displayed
    And the "tradingHours" should be displayed
    And the "tradingHoursTiming" table should equal the following:
       |data-testid='trading-hours-table'|


  @dev
  Scenario: As a user I should be able to set the preferred store
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And the "preferredStore" should be displayed
    And I click the "storeName" link
    And I wait "5" seconds
    And I click the "viewStoreDetails" button
    And I wait "2" seconds
    And I am directed to the "selectedStore" page
    And I wait "2" seconds
    And the "breadcrumb" should be displayed
    And I click the "store" link
    And I wait "5" seconds
    And I am directed to the "store" page
    And I fill in the "postCodeSearch" input with "3030"
    And the "postCodeSearchResult" should be displayed
    And I click the "4th" "postCodeSearchResult" name
    And I wait "6" seconds
    And I click the "firstSearchResult" name
    And I wait "6" seconds
    And I click the "viewStoreDetails" button
    And I wait "6" seconds
    And I click the "setAsStore" button
    And I wait "6" seconds




 
