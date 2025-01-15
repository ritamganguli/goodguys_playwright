Feature: Verify checkout feature for a delivery order


  Background:
    Given I am on the "home" page



  Scenario: Verify the checkout journey for an order delivery
    And I fill in the "search" input with "50080539"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
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
    And I click the "delivery" button
    And I wait "10" seconds
    And I fill in the "firstName" input with "asha"
    And I fill in the "lastName" input with "singh"
    And I click the "shippingAddress" link
    And I fill in the "shippingAddress" input with "16 whitecaps Avenue"
    And I fill in the "address2" input with "16 whitecaps Avenue"
    And I fill in the "city" input with "Point Cook"
    And I select the "Victoria" option from the "state"
    And I fill in the "postCode" input with "3030"
    And I fill in the "phoneNumber" input with "0470258963"
    And I click the "proceedToDeliveryOptions" button
    Then I am directed to the "shipping" page
    And I wait "6" seconds
    And I click the "proceedToPayment" button
    And I wait "6" seconds
    #And the "creditCard" radio button should be checked
    And I fill in the "cardNumber" input on the "iFrameCreditCard" iframe with "4242424242424242"
     #And I fill in the "nameOnCard" input on the "iFrameCreditCard" iframe with "test"
     And I wait "2" seconds
    And I fill in the "expirationDate" input on the "iFrameCreditCard" iframe with "09/25"
     And I wait "2" seconds
    And I fill in the "securityCode" input on the "iFrameCreditCard" iframe with "111"
    #And I click the "sameAsShippingAddress" link
    And I click the "placeYourOrder" link
    And I wait "10" seconds
    And the "Thank you message" should be displayed
    And I wait "3" seconds


    @dev
    Scenario: As a user I should be able to receive a message when an order is unable to be shipped
      And I fill in the "search" input with "television"
      And I wait "1" seconds
      And I click the "searchButton" button
      Then I am directed to the "searchResult" page
      And I wait "3" seconds
      And I click the "firstProduct" name
      And I am directed to the "productDisplay12" page
      And I click the "addToCart" button
      And I wait "15" seconds
      And I click the "checkoutNow" button
      And I wait "4" seconds
      And I fill in the "email" input with "ashasingh@thegoodguys.com.au"
      And I wait "2" seconds
      And I click the "delivery" button
      And I wait "10" seconds
      And I fill in the "firstName" input with "asha"
      And I fill in the "lastName" input with "singh"
      And I click the "shippingAddress" link
      And I fill in the "shippingAddress" input with "16 whitecaps Avenue"
      And I fill in the "address2" input with "16 whitecaps Avenue"
      And I fill in the "city" input with "Point Cook"
      And I select the "Victoria" option from the "state"
      And I fill in the "postCode" input with "3030"
      And I fill in the "phoneNumber" input with "0470258963"
      And I click the "proceedToDeliveryOptions" button
      Then I am directed to the "shipping" page
      And I wait "10" seconds
      And the "shippingMessage" should be displayed
      And the "shippingMessageText" should contain the text "Your order cannot be shipped to the selected address."


  @dev
  Scenario: As a user I should be able to select a date from the calender for the day of delivery
    And I fill in the "search" input with "50080539"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay" page
    And I click the "addToCart" button
    And I wait "15" seconds
    And I click the "checkoutNow" button
    And I wait "4" seconds
    And I fill in the "email" input with "ashasingh@thegoodguys.com.au"
    And I wait "2" seconds
    And I click the "delivery" button
    And I wait "10" seconds
    And I fill in the "firstName" input with "asha"
    And I fill in the "lastName" input with "singh"
    And I click the "shippingAddress" link
    And I fill in the "shippingAddress" input with "16 whitecaps Avenue"
    And I fill in the "address2" input with "16 whitecaps Avenue"
    And I fill in the "city" input with "Point Cook"
    And I select the "Victoria" option from the "state"
    And I fill in the "postCode" input with "3030"
    And I fill in the "phoneNumber" input with "0470258963"
    And I click the "proceedToDeliveryOptions" button
    Then I am directed to the "shipping" page
    And I wait "10" seconds
    And the "deliveryDate" should be displayed
    And I click the "newDeliveryDate" button



  @dev
  Scenario: As a user I should be able to change the shipping method
    And I fill in the "search" input with "50080539"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay" page
    And I click the "addToCart" button
    And I wait "15" seconds
    And I click the "checkoutNow" button
    And I wait "4" seconds
    And I fill in the "email" input with "ashasingh@thegoodguys.com.au"
    And I wait "2" seconds
    And I click the "delivery" button
    And I wait "10" seconds


  @dev
  Scenario: As a user I should be able to return to the cart
    And I fill in the "search" input with "50080539"
    And I click the "searchButton" button
    Then I am directed to the "searchResult" page
    And I wait "3" seconds
    And I click the "firstProduct" name
    And I am directed to the "productDisplay" page
    And I click the "addToCart" button
    And I wait "15" seconds
    And I click the "checkoutNow" button
    And I wait "4" seconds
    And I fill in the "email" input with "ashasingh@thegoodguys.com.au"
    And I wait "2" seconds
    And I click the "returnToCart" link