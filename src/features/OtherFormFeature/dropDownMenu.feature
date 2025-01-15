Feature: As a user I can interact with drop down feature

  Background:
    Given I am on the "home" page


  Scenario: As a user I can interact and assert on drop down menus
    And I fill in the "search" input with "Cygnett"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I click the "firstProduct" name
    And I am directed to the "productDisplay2" page
    And I click the "Ratings & Reviews" button
    And the "ReviewSection" should be displayed
    And I click the "Review sort dropdown" button
    #And I click the "lowToHighRating" element
    And I select the "Highest to Lowest rating" option from the "Review sort dropdown"