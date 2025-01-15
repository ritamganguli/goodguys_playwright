Feature: Verify Product listing page


  Background:
    Given I am on the "home" page



  @dev
  Scenario: Verify the functionality of load more button on Product listing Page
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I scroll to the "loadMore"
    And the "loadMore" should be displayed
    And I click the "loadMore" button
    And I wait "3" seconds
    And I scroll to the "loadMore"
    And the "loadMore" should be displayed
    And I click the "loadMore" button
    And I wait "3" seconds


    @dev
  Scenario: Verify the web labels on products on Product listing Page
    And I fill in the "search" input with "fridges"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And the "firstProduct" should be displayed
    And the "inStoreOnlyRightBadge" should be displayed
    And the "tradeInstallREQBadge" should be displayed
    And the "offersLeftBadge" should be displayed
    And the "giftCardLeftBadge" should be displayed
    And the "bundleOfferLeftBadge" should be displayed

