Feature: As a user I should be able to view the banners on television category

  Background:
    Given I am on the "home" page

  @dev
  Scenario: As a user I should be able to view the hero banner on television category
    And I click the "shopProducts" name
    And I click the "televisionButton" name
    And I click the "allTVs" name
    And I am directed to the "allTVs" page
    And the "breadcrumb" should be displayed
    And I click the "television" link
    And I am directed to the "television" page
    And I wait "2" seconds
    And the "televisionHeroBanner" should be displayed
    And I wait "2" seconds

  @dev
  Scenario: As a user I should be able to view the bento grid content card on television category
    And I click the "shopProducts" name
    And I click the "televisionButton" name
    And I click the "allTVs" name
    And I am directed to the "allTVs" page
    And the "breadcrumb" should be displayed
    And I click the "television" link
    And I am directed to the "television" page
    And I wait "2" seconds
    And the "bentoGrid1" should be displayed
    And the "bentoGrid2" should be displayed
    And the "bentoGrid3" should be displayed
    And the "bentoGrid4" should be displayed
    And the "bentoGrid5" should be displayed
    And the "bentoGrid6" should be displayed
    And I wait "2" seconds


  @dev
  Scenario: As a user I should be able to view the content card on television category
    And I click the "shopProducts" name
    And I click the "televisionButton" name
    And I click the "allTVs" name
    And I am directed to the "allTVs" page
    And the "breadcrumb" should be displayed
    And I click the "television" link
    And I am directed to the "television" page
    And I wait "2" seconds
    And the "contentCard1" should be displayed
    And the "contentCard2" should be displayed
    And the "contentCard3" should be displayed
    And the "contentCard4" should be displayed
    And the "contentCard5" should be displayed
    And I wait "2" seconds



  Scenario: As a user I should be able to view the buying guide on television category
    And I click the "shopProducts" name
    And I click the "televisionButton" name
    And I click the "allTVs" name
    And I am directed to the "allTVs" page
    And the "breadcrumb" should be displayed
    And I click the "television" link
    And I am directed to the "television" page
    And I wait "2" seconds
    And the "richContent" should be displayed
    And the "buyingGuide" should be displayed
      And I wait "2" seconds



  Scenario: As a user I should be able to view the buttons on  buying guide on television category
    And I click the "shopProducts" name
    And I click the "televisionButton" name
    And I click the "allTVs" name
    And I am directed to the "allTVs" page
    And the "breadcrumb" should be displayed
    And I click the "television" link
    And I am directed to the "television" page
    And I wait "2" seconds
    And the "modal" should be displayed
    And the "infoGuide" should be displayed
    And the "videoUploadTesting" should be displayed
    And I wait "2" seconds



 
