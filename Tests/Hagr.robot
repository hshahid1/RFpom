*** Settings ***
Documentation  Some basic info man
Resource  ../Resources/Hagr.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/CustomerInformation.robot
Resource  ../Resources/PO/ShippingMethod.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://haggar.ca

*** Test Cases ***
Place an Order
    [Documentation]  User needs to login to place an order
    [Tags]  Smoke

    Hagr.Open Home Page
    Common.Close Sign Up Popup
    Hagr.Search a Product
    Hagr.Specify Product Specs
    Hagr.Add to Bag and Checkout
    CustomerInformation.Fill Customer Info and Continue to Shipping Method
    ShippingMethod.Specify Shipping Method and Continue to Payment Method

