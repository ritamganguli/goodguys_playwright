Feature: As a user I can sort the products by price on PLP

  Background:
    Given I am on the "home" page


  @dev
  Scenario: As a user I should have different option to modify the view of data
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "2" seconds
    And the "relevancy" should be displayed
    And I click the "relevancy" trigger
    And I wait "2" seconds
    And the "priceLowToHigh" should be displayed
    And the "priceHighToLow" should be displayed
    And the "titleAToZ" should be displayed
    And the "titleZToA" should be displayed
    And the "ratingHighToLow" should be displayed
    And the "ratingLowToHigh" should be displayed


  @dev
  Scenario: As a user I can sort the products using low to high product prices
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And the "relevancy" should be displayed
    And I click the "relevancy" trigger
    And I wait "2" seconds
    And the "priceLowToHigh" should be displayed
    And I click the "priceLowToHigh" trigger
    And I wait "5" seconds
    And I scroll to the "firstProductPrice"
    And I retrieve the "firstProductPrice" text and store it as "firstProductPrice" in global variables
    And I click the "2nd" "product" button
    And the "secondProductPrice" amount should be more than the "firstProductPrice" stored in global variables


  @dev
  Scenario: As a user I can sort the products using high to low product prices
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And the "relevancy" should be displayed
    And I click the "relevancy" trigger
    And I wait "2" seconds
    And the "priceHighToLow" should be displayed
    And I click the "priceHighToLow" trigger
    And I wait "5" seconds
    And I scroll to the "firstProductPrice"
    And I retrieve the "firstProductPrice" text and store it as "firstProductPrice" in global variables
    And I click the "2nd" "product" button
    And the "secondProductPrice" amount should be less than the "firstProductPrice" stored in global variables


    @dev
  Scenario: As a user I can sort the products using high to low products rating
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And the "relevancy" should be displayed
    And I click the "relevancy" trigger
    And I wait "2" seconds
    And the "ratingHighToLow" should be displayed
    And I click the "ratingHighToLow" trigger
    And I wait "5" seconds
    And the "5-starReviews" should be displayed


  @dev
  Scenario: As a user I can sort the products using low to high product ratings
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And the "relevancy" should be displayed
    And I click the "relevancy" trigger
    And I wait "2" seconds
    And the "priceLowToHigh" should be displayed
    And I click the "priceLowToHigh" trigger
    And I wait "5" seconds
    And I scroll to the "firstProductPrice"
    And the "noReviews" should be displayed
 
