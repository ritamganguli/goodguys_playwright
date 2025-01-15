Feature: Verify review section on Product display page


  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify ratings and review for a product on PDP Page
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    And I click the "Ratings & Reviews" button
    And the "ReviewSectionHeader" should be displayed
    And the "ReviewSectionContent" should be displayed


  @dev
  Scenario: Verify reviews on PDP is clickable and can direct to review section
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    And I click the "readReviews" button
    And the "ReviewSectionHeader" should be displayed
    And the "ReviewSectionContent" should be displayed


  @dev
  Scenario: Verify review section on PDP Page and user can select different reviews from dropdown
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    And I click the "Ratings & Reviews" button
    And the "ReviewSectionContent" should be displayed
    And I click the "Review sort dropdown" button
    And I click the "HighestToLowestRating" button
    #And I select the "HighestToLowestRating" option from the "Review sort dropdown"
    And I wait "8" seconds


  @dev
  Scenario: Verify ratings and review card provided by a someone for a product on PDP Page
    And I wait "3" seconds
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
     And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    And I click the "Ratings & Reviews" button
    And I wait "2" seconds
    And the "ReviewSectionContent" should be displayed
    And the "ReviewItemCard" should be displayed
    And the "reviewRating" should be displayed
    And the "reviewTitle" should be displayed
    And the "reviewContent" should be displayed
    And the "reviewText" should be displayed
    And the "reviewReviewer" should be displayed
    And the "reviewDates" should be displayed


  @dev
  Scenario: Verify user can select and view review card
    And I fill in the "search" input with "bose"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "10th" "product" button
    And I am directed to the "productDisplay2" page
    And I click the "Ratings & Reviews" button
    And the "ReviewSectionContent" should be displayed
    And I click the "filters" button
    And I click the "rating5" button
    #Then I check the "rating5" check box


  @dev
  Scenario: Verify youtube review section for a product on PDP Page
    And I fill in the "search" input with "dyson"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "2" seconds
    And I click the "9th" "product" button
    And I am directed to the "productDisplay8" page
    And I wait "3" seconds
    And I click the "Ratings & Reviews" button
    And the "ReviewSectionContent" should be displayed
    And the "youTubeReview" should be displayed
    And I wait "3" seconds


