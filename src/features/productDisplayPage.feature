Feature: Verify Product display page


  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify product display page by navigating via MegaMenu
    And I fill in the "search" input with "50031814"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay" page
    And the "breadcrumb" should be displayed


  @dev
  Scenario: Verify the Product name and model number displayed on PDP Page
    And I fill in the "search" input with "50031814"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay" page
    And the "pdpProductName" should be displayed
    And the "pdpModalNumber" should be displayed
    And the "pdpProductPrice" should be displayed


  @dev
  Scenario: Verify the add to cart button displayed on PDP Page
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    And I wait "3" seconds
    And the "addToCart" should be displayed
    And I wait "3" seconds
    And the "checkStockContent" should be displayed


  @dev
  Scenario: Verify the Buy Now Pay later and latitude pay section displayed on PDP Page
    And I fill in the "search" input with "50031814"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay" page
    And the "BuyNowPayLaterSection" should be displayed


  @dev
  Scenario: Verify the product limit message on PDP Page
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    Then I wait "6" seconds
    And the "productLimitMessage" should be displayed


  @dev
  Scenario: Verify that brand logo will be displayed at the top of product information on PDP Page
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    Then I wait "6" seconds
    And the "brandLogo" should be displayed



  @dev
  Scenario: Verify that brand logo on PDP page is linked with same brand
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    Then I wait "6" seconds
    And I click the "brandLogo" link
    And I am directed to the "boseBrand" page
    Then I wait "6" seconds


  @dev
  Scenario: Verify that brand logo on PDP page is linked with same brand
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    Then I wait "6" seconds
    And I click the "brandLogo" link
    And I am directed to the "boseBrand" page
    Then I wait "6" seconds


  @dev
  Scenario: Verify that as a user can view the different images of the product
    And I fill in the "search" input with "television"
    And I wait "1" seconds
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay12" page
    And I click the "nextImageButton" name



  @dev
  Scenario: Verify that as a user user can view the video of a product on PDP
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    Then I wait "6" seconds
    And I click the "brandLogo" link
    And I am directed to the "boseBrand" page
    Then I wait "6" seconds


  @dev
  Scenario: Verify that as a user user can view the video of a product on PDP
    And I fill in the "search" input with "50048450"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay14" page
    Then I wait "6" seconds
    And I click the "pdpVideo" link
    And I click the "closeVideo" button
    Then I wait "6" seconds