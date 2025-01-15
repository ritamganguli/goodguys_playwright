Feature: Verify home page section

  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify the home page hot buy section
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And the "hotBuySection" should be displayed


  @dev
  Scenario: Verify the Shop Now button in home page hot buy section
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "8" seconds
    And the "ShopNowButton" should be displayed


  @dev
  Scenario: Verify the disclaimer text home page hot buy section
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "8" seconds
    And the "disclaimerTextHotBuy" should be displayed


  @dev
  Scenario: Verify the home page campaign banner section
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And the "campaignBanner" should be displayed


  @dev
  Scenario: Verify the home page data slider section
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And the "dataSlider" should be displayed
    And the "dataSliderTitle" should be displayed
    And the "dataSliderCarousel" should be displayed


  @dev
  Scenario: Verify that on clicking the carousel respective product page will open
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And the "dataSliderCarousel" should be displayed
    And I click the "tvCarousel" button
    And I wait "9" seconds


  @dev
  Scenario: Verify the home page disclaimer banner section
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And the "disclaimerBanner" should be displayed


  @dev
  Scenario: Verify the home page disclaimer text section
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And the "disclaimerText" should be displayed



  @dev
  Scenario: Verify the promo standard tile should be displayed
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And I scroll to the "bestDealsSection"
    And the "promoTile1" should be displayed
    And the "promoTile2" should be displayed
    And the "promoTile3" should be displayed
    And the "promoTile4" should be displayed
    And the "promoTile5" should be displayed
    And the "promoTile6" should be displayed
    And the "promoTile7" should be displayed


  @dev
  Scenario: Verify the content card grid should be displayed
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And I scroll to the "whats-new"
    And the "contentCardGrid1" should be displayed
    And the "contentCardGrid2" should be displayed
    And the "contentCardGrid3" should be displayed
    #And the "contentCardGrid4" should be displayed
    #And the "contentCardGrid5" should be displayed


  @dev
  Scenario: Verify the Shop Now button on the content card grid
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And I scroll to the "whats-new"
    And the "contentCardGrid2" should be displayed
    And the "contentCardGridHeading" should be displayed
    And the "contentCardGridShopNowButton" should be displayed


  @dev
  Scenario: Verify the Shop Now button on the content card grid
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "12" seconds
    And I scroll to the "whats-new"
    And the "contentCardGrid2" should be displayed
    And the "contentCardGridHeading" should be displayed
    And the "contentCardGridShopNowButton" should be displayed
    And I click the "contentCardGridShopNowButton" button
    And I am directed to the "television" page