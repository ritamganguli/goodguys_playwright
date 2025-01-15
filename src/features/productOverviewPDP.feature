Feature: Verify product overview section on Product display page


  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify product overview section on PDP Page
    And I fill in the "search" input with "ninja"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "9th" "product" button
    And I wait "3" seconds
    And I am directed to the "productDisplay5" page
    And the "Product Overview" should be displayed
    And I click the "readMore" link
    Then I wait "3" seconds
    And I click the "readMore" link
    Then I wait "3" seconds


  @dev
    Scenario: Verify key features section on PDP Page
    And I fill in the "search" input with "ninja"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "9th" "product" button
    And I wait "3" seconds
    And I am directed to the "productDisplay5" page
    And the "keyFeatures" should be displayed


  @dev
  Scenario: Verify Information section on PDP Page
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
     Then I wait "6" seconds
    And I click the "informationTrigger" trigger
    And the "informationContent" should be displayed
    Then I wait "6" seconds


  @dev
  Scenario: Verify specification section on PDP Page
    And I fill in the "search" input with "ninja"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "9th" "product" button
    And I wait "3" seconds
    And I am directed to the "productDisplay5" page
    And I wait "3" seconds
    And I click the "specificationTrigger" button
    And the "specificationHeader" should be displayed
    And the "specificationContent" should be displayed
    Then I wait "3" seconds



  @dev
  Scenario: Verify technical specification for a product on PDP Page
    And I fill in the "search" input with "50031814"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay11" page
    And I wait "3" seconds
    And I click the "specificationTrigger" button
    And the "specificationHeader" should be displayed
    And the "specificationContent" should be displayed
    Then I wait "3" seconds



  @dev
  Scenario: Verify dimension for a product on PDP Page
    And I fill in the "search" input with "50065246"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay13" page
    And I wait "3" seconds
    And I click the "dimensionTrigger" button
    And the "dimensionHeader" should be displayed
    And the "dimensionContent" should be displayed
    Then I wait "3" seconds