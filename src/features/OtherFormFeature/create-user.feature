Feature: As a user I should be able to complete the registration

  Background:
    Given I am on the "home" page


  Scenario: As a user I should be able to complete the registration
    And I click the "userIcon" link
    Then I am directed to the "userCreationOrSignIn" page
    And I click the "createAccount" button
    Then I am directed to the "createAnAccount" page
     And I select the "Mrs" option from the "title"
    And I fill in the "firstName" input with "New"
    And I fill in the "lastName" input with "Test"
    And I fill in the "streetAddress" input with "16 whitecaps Avenue, POINT COOK VIC 3030"
    #And I click the "16 whitecaps Avenue" link
    And the "streetAddress" should contain the value "16 whitecaps Avenue, POINT COOK VIC 3030"
    And the "streetAddress" should not contain the value "16 White Cap Close, REDHEAD  NSW 2290"
    And I fill in the "emailAddress" input with "new.test@gmail.com"
    # the below line can be used to verify the field value those are disabled, readonly also
    And the "emailAddress" should equal the value "new.test@gmail.com"
    And I fill in the "phoneNumber" input with "0470258963"
    And the "phoneNumber" should be enabled
    And I fill in the "createPassword" input with "event1298"
    And I fill in the "reEnterPassword" input with "event1298"
    And I click the "register" button



  Scenario: As a user I should be able to interact and assert the validation
    And I click the "userIcon" link
    Then I am directed to the "userCreationOrSignIn" page
    And I click the "createAccount" button
    Then I am directed to the "createAnAccount" page
    And I select the "Mrs" option from the "title"
    And I fill in the "firstName" input with "11"
    And I fill in the "lastName" input with "Test"
    And the "firstNameError" should contain the text "The first name entered allows only alphabets"


  Scenario: As a user I should be able to select first product
    And I click the "2nd" "product" button
    And the "2nd" "product" should contain the text "productName"
    And I am directed to the "productDisplay" page


  Scenario: As a user I should be able to interact and assert on radio buttons
    And the "delivery choice as express" radio button should be checked
    And the "standard" radio button should not be checked
    And I check the "standard" radio button
    And the "standard delivery" should contain the text "standard"
    And the "standard delivery" should not contain the text "express"


  Scenario: As a user I can interact and assert on page alerts
    Given I am on the "home" page
    And the "error alert" should be displayed
    And the "error alert" should contain the text "Your payment details couldn’t be verified. Check your card details and try again."