*** Settings ***
Library  Selenium2Library

*** Variables ***
${E_DISCOUNT} =  xpath=//*[@id="checkout_reduction_code"]
${BTN_ApplyDiscount} =  xpath=/html/body/div[2]/div/div[1]/div[2]/div[1]/div/div[2]/form[1]/div/div/div/button
${BTN_ContinueTOPaymentMethod} =  xpath=/html/body/div[2]/div/div[2]/strong/strong/strong/div[1]/div/form/div[2]/button
*** Keywords ***
Specify Shipping Method and Continue to Payment Method
    input text  ${E_DISCOUNT}  Fefe$4
    click button  ${BTN_ApplyDiscount}
    sleep  1s
    click button  ${BTN_ContinueTOPaymentMethod}
    wait until page contains  Payment method
