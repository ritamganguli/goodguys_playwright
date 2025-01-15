Feature: Verify compare tool features


  Background:
    Given I am on the "home" page

  @dev
  Scenario: Verify that Add compare checkbox exist on PDP Page
    And I wait "3" seconds
    And I fill in the "search" input with "50046038"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "10" seconds
    And I scroll to the "compareCheckBox"
    And the "compareCheckBox" should be displayed

  @dev
  Scenario: Verify that as a user I can compare any product by adding the compare checkbox on PDP Page
    And I wait "3" seconds
    And I fill in the "search" input with "50046038"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "10" seconds
    And I scroll to the "compareCheckBox"
    And the "compareCheckBox" should be displayed
    And I click the "compareCheckBox" element
    And I wait "3" seconds
    And I fill in the "search" input with "dryer"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "7th" "compare" button


  @dev
  Scenario: Verify that user can compare products using the compare checkbox on PLP
    And I fill in the "search" input with "Washing Machine"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "4th" "compare" button
    And I click the "5th" "compare" button
    And I click the "compareItems" button
    And I wait "6" seconds


  @dev
  Scenario: Verify that error message should be displayed when user tries to add more than 4 products to compare on PLP
    And I fill in the "search" input with "Washing Machine"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "4th" "compare" button
    And I click the "5th" "compare" button
    And I click the "6th" "compare" button
    And I click the "7th" "compare" button
    And I click the "8th" "compare" button
    And the "compareErrorMessage" should be displayed
    And I wait "6" seconds


  @dev
  Scenario: Verify that user can add the product in cart from compare modal
    And I fill in the "search" input with "Washing Machine"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "4th" "compare" button
    And I click the "5th" "compare" button
    And I click the "compareItems" button
    And I wait "6" seconds


  @dev
  Scenario: Verify that user can clear the items to compare products
    And I fill in the "search" input with "Washing Machine"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "4th" "compare" button
    And the "compareModal" should be displayed
    And I click the "clearAll" button
    And the "compareModal" should not be displayed
