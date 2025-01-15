Feature: Verify checkout feature for a pick order


  Background:
    Given I am on the "home" page



  Scenario: Verify the checkout journey for an order pickup
    And I fill in the "search" input with "50031814"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "2" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay" page
    And I click the "addToCart" button
    And I wait "15" seconds
    And I click the "checkoutNow" button
   # And I wait "3" seconds
#    And I click the "passwordButton" button
#    And I fill in the "passwordField" input with "ostomo"
#    And I click the "commit" button
#    And I wait "3" seconds
#    And I navigate back on the "product" page
#    And I navigate back on the "product" page
#    And I click the "miniCart" button
#    And I click the "checkoutNow" button
    And I wait "4" seconds
    And I fill in the "email" input with "ashasingh@thegoodguys.com.au"
    And I wait "2" seconds
    And I click the "clickAndCollect" button
    And I wait "10" seconds
    And I click the "proceedToPayment" button
    Then I am directed to the "payment" page
    And I wait "2" seconds
    And the "creditCard" radio button should be checked
    And I fill in the "cardNumber" input on the "iFrameCreditCard" iframe with "4242424242424242"
    And I wait "2" seconds
    And I fill in the "nameOnCard" input on the "iFrameCreditCard" iframe with "test"
    #And I wait "2" seconds
    And I fill in the "expirationDate" input on the "iFrameCreditCard" iframe with "09/25"
    And I wait "2" seconds
    And I fill in the "securityCode" input on the "iFrameCreditCard" iframe with "111"
    And I fill in the "firstName" input with "asha"
    And I fill in the "lastName" input with "singh"
    And I click the "address" link
    And I fill in the "address" input with "16 whitecaps Avenue"
    And I fill in the "address2" input with "16 whitecaps Avenue"
    And I fill in the "city" input with "Point Cook"
    And I select the "Victoria" option from the "state"
    And I fill in the "postCode" input with "3030"
    And I wait "2" seconds
    And I click the "placeYourOrder" link
    And I wait "10" seconds
    And the "Thank you message" should be displayed
    And I wait "3" seconds



  Scenario: Verify the checkout journey for an order pickup by a friend
    And I fill in the "search" input with "50031814"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "2" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay" page
    And I click the "addToCart" button
    And I wait "15" seconds
    And I click the "checkoutNow" button
#    And I wait "3" seconds
#    And I click the "passwordButton" button
#    And I fill in the "passwordField" input with "ostomo"
#    And I click the "commit" button
#    And I wait "3" seconds
#    And I navigate back on the "product" page
#    And I navigate back on the "product" page
#    And I click the "miniCart" button
#    And I click the "checkoutNow" button
    And I wait "4" seconds
    And I fill in the "email" input with "ashasingh@thegoodguys.com.au"
    And I wait "2" seconds
    #And I click the "clickAndCollect" button
    And I wait "10" seconds
    And I click the "friendsAndFamilyPickUp" button
    And I fill in the "friendsFirstName" input with "John"
    And I fill in the "friendsLastName" input with "Doe"
    And I fill in the "friendsEmail" input with "John.doe@gmail.com"
    And I fill in the "friendsMobile" input with "0470258963"
    And I wait "2" seconds
    And I click the "proceedToPayment" button
    Then I am directed to the "payment" page
    And I wait "2" seconds
    And the "creditCard" radio button should be checked
    And I fill in the "cardNumber" input on the "iFrameCreditCard" iframe with "4242424242424242"
    And I wait "2" seconds
    And I fill in the "nameOnCard" input on the "iFrameCreditCard" iframe with "test"
    #And I wait "2" seconds
    And I fill in the "expirationDate" input on the "iFrameCreditCard" iframe with "09/25"
    And I wait "2" seconds
    And I fill in the "securityCode" input on the "iFrameCreditCard" iframe with "111"
    And I fill in the "firstName" input with "asha"
    And I fill in the "lastName" input with "singh"
    And I click the "address" link
    And I fill in the "address" input with "16 whitecaps Avenue"
    And I fill in the "address2" input with "16 whitecaps Avenue"
    And I fill in the "city" input with "Point Cook"
    And I select the "Victoria" option from the "state"
    And I fill in the "postCode" input with "3030"
    And I click the "placeYourOrder" link
    And I wait "10" seconds
    And the "Thank you message" should be displayed
    And I wait "3" seconds


