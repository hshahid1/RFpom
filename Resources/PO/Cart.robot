*** Settings ***
Library  Selenium2Library

*** Variables ***
${CART_CHECKOUT_BTN} =  xpath=//*[@id="checkout"]


*** Keywords ***
Checkout from Cart
    click element  ${CART_CHECKOUT_BTN}
    wait until page contains  Customer information
    sleep  1s