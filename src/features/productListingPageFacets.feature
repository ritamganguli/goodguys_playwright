Feature: As a user I should be able to work with facets and sort options

  Background:
    Given I am on the "home" page


  @dev
  Scenario: As a user I should be able to view the four facets
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And the "priceRange" should be displayed
    And the "brand" should be displayed
    And the "type" should be displayed




  @smoke
  Scenario: As a user I should be able to change price in price facets and narrow the search criteria
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And I click the "priceRange" trigger
    And I wait "3" seconds
    And I fill in the "fromPrice" input with "2000"
    And I click the "relevancy" trigger
    And I wait "6" seconds
    And I fill in the "toPrice" input with "8000"
    #And I click the "minSlider" trigger
    And I wait "6" seconds
    #And I fill in the "fromPrice" input with "2000"
    #And I wait "6" seconds
    And I scroll to the "loadMore"
    And the "loadMore" should be displayed
    And I wait "3" seconds


  @smoke
  Scenario: As a user I should be able to change price in price facets and narrow the search criteria
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And I click the "priceRange" trigger
    And I wait "3" seconds
    And I fill in the "toPrice" input with "8000"
    And I wait "6" seconds
    And I scroll to the "loadMore"
    And the "loadMore" should be displayed
    And I wait "3" seconds


  @dev
  Scenario: As a user I should be able to select any brand using brand facets
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And I click the "brand" trigger
    And the "brandHeader" should be displayed
    And the "brandContent" should be displayed
    And I wait "2" seconds
    And I click the "brandCheckBox" button
    And I wait "3" seconds



  @dev
  Scenario: As a user I should be able to view less and more brand using brand facets
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And I click the "brand" trigger
    And I wait "2" seconds
    And I scroll to the "showMoreLessButton"
    And I wait "2" seconds
    And I click the "showMoreLessButton" link
    And I wait "2" seconds
    And I click the "showMoreLessButton" link
    And I wait "2" seconds


  @dev
  Scenario: As a user I should be able to select different type of products using type facets
    And I fill in the "search" input with "television"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "1" seconds
    And I click the "productType" trigger
    And I wait "2" seconds
    And I click the "typeCheckBox" button
    And I wait "3" seconds






 
