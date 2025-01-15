Feature: Verify brands page section

  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify that brand menu item is displayed
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "brand" button
    And I wait "3" seconds
    And the "brandSelector" should be displayed


  @dev
  Scenario: Verify that user can search any brand from the brand search box
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "brand" button
    And I wait "3" seconds
    And the "brandSelector" should be displayed
    And I fill in the "brandSearch" input with "acer"
    And I click the "brandList" link
    And I wait "3" seconds
    And I am directed to the "brandAcer" page
    And I wait "3" seconds


  @dev
  Scenario: Verify that user can navigate to any brand from the alphabetical order brand list
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "brand" button
    And I wait "3" seconds
    And the "alphabeticalOrderBrandList" should be displayed
    And I click the "labelD" link
    And I wait "3" seconds
    And the "dividerD" should be displayed
    And I click the "dysonBrand" link
    And I am directed to the "brandDyson" page
    And I wait "3" seconds


  @dev
  Scenario: Verify that user can navigate to any brand from the featured brand
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "brand" button
    And I wait "3" seconds
    And the "featuredBrand" should be displayed
    And I click the "hpBrand" link
    And I wait "3" seconds
    And I am directed to the "brandHP" page
    And I wait "3" seconds

