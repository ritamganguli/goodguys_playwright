Feature: Verify check stock features


  Background:
    Given I am on the "home" page

  @dev
  Scenario: Verify that all the delivery options are displayed
    And I wait "3" seconds
    And I fill in the "search" input with "50080754"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay6" page
    And I wait "10" seconds
    And I click the "viewAllDeliveryOptions" link
    And I wait "3" seconds
    And the "AustraliaPostDelivery" should be displayed
    And the "standardDeliveryExpress" should be displayed


  @dev
  Scenario: Verify that the standard delivery message is displayed on Delivery options
    And I wait "3" seconds
    And I fill in the "search" input with "50046038"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "10" seconds
    And I click the "viewAllDeliveryOptions" link
    And I wait "3" seconds
    And the "standardDeliveryMessage" should be displayed


  @dev
  Scenario: Verify that the premium delivery message is displayed on Delivery options
    And I wait "3" seconds
    And I fill in the "search" input with "50046038"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "10" seconds
    And I click the "viewAllDeliveryOptions" link
    And I wait "3" seconds
    And the "premiumDeliveryMessage" should be displayed


  @dev
  Scenario: Verify that the More Info link is displayed
    And I wait "3" seconds
    And I fill in the "search" input with "50046038"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay9" page
    And I wait "10" seconds
    And I click the "viewAllDeliveryOptions" link
    And I wait "3" seconds
    And the "moreInfo" should be displayed
    And I click the "moreInfo" link
    And I wait "3" seconds
    And the "installationInfo" should be displayed
    And I click the "backToDeliveryOptionsButton" button
    And I wait "3" seconds


  @dev
  Scenario: Verify that the delivery options
  And I wait "3" seconds
  And I fill in the "search" input with "50080754"
  And I click the "searchButton" button
  Then I am directed to the "searchResult" page
  And I wait "3" seconds
  And I click the "firstProduct" name
  And I am directed to the "productDisplay6" page
  And I wait "10" seconds
  And I click the "changeLocation" link
#    And I wait "3" seconds
#    And I click the "changeStoreButton" button
   And I fill in the "changeLocationPOCode" input with "3029"
   And the "postCodeSearchResult" should be displayed
   And I click the "2nd" "postCodeSearchResult" name
   And I wait "6" seconds
   And I click the "firstSearchResult" name
   And I wait "6" seconds
   And the "uberScheduleDelivery" should be displayed
   And the "uberScheduleAsap" should be displayed
   And the "AustraliaPostDelivery" should be displayed
   And the "standardDeliveryExpress" should be displayed

