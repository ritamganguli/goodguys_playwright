Feature: As a user I should be able to search a products

  Background:
    Given I am on the "home" page

  @dev
  Scenario: As a user I should be able to search a product
    And I fill in the "search" input with "television"
    And I wait "1" seconds
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay12" page


  @dev
  Scenario: As a user I should be able to search all product
    And I fill in the "search" input with "ALL"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And I click the "4th" "product" button
    And I wait "2" seconds
    And I am directed to the "productDisplay4" page


  @dev
  Scenario: As a user I should be able to search with a SKU
    And I fill in the "search" input with "television"
    And I wait "1" seconds
    And I clear the "search" input text
    And I click the "searchButton" button
    And I wait "2" seconds




 
