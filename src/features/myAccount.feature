Feature: Verify home page section

  Background:
    Given I am on the "home" page


  @dev
  Scenario: Verify that as a user can click on sign in and social login option will be displayed
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "signIn" button
    And I wait "3" seconds
    And the "socialLoginOption" should be displayed

  @dev
  Scenario: Verify that a sign in alert should be displayed on sign in section
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "signIn" button
    And I wait "3" seconds
    And the "signInAlert" should be displayed


  @dev
  Scenario: Verify that as a user can signIn using google account
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "signIn" button
    And I wait "3" seconds
    And the "socialLoginOption" should be displayed
    And I click the "googleLoginIn" button
    And I wait "8" seconds

  @dev
  Scenario: Verify that as a user can signIn using facebook account
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "signIn" button
    And I wait "3" seconds
    And the "socialLoginOption" should be displayed
    And I click the "facebookLoginIn" button
    And I wait "8" seconds


  @dev
  Scenario: Verify that as a user can signIn using microsoft account
    And I fill in the "search" input with "westinghouse"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "5" seconds
    And I click the "homeLink" button
    And I wait "8" seconds
    And I am directed to the "refreshHome" page
    And I wait "3" seconds
    And I click the "signIn" button
    And I wait "3" seconds
    And the "socialLoginOption" should be displayed
    And I click the "microsoftLoginIn" button
    And I wait "8" seconds

