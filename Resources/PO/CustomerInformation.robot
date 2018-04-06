*** Settings ***
Library  Selenium2Library

*** Variables ***
${E_EMAIL} =  //*[@id="checkout_email"]
${E_FIRSTNAME} =  xpath=//*[@id="checkout_shipping_address_first_name"]
${E_LASTNAME} =  xpath=//*[@id="checkout_shipping_address_last_name"]
${E_ADDRESS1} =  xpath=//*[@id="checkout_shipping_address_address1"]
${E_ADDRESS2} =  xpath=//*[@id="checkout_shipping_address_address2"]
${E_CITY} =  xpath=//*[@id="checkout_shipping_address_city"]
${E_COUNTRY} =  xpath=//*[@id="checkout_shipping_address_country"]
${E_POSTALCODE} =  xpath=//*[@id="checkout_shipping_address_zip"]
${E_PHONE} =  xpath=//*[@id="checkout_shipping_address_phone"]
${BTN_ContinueToShippingMethod} =  xpath=/html/body/div[2]/div/div[2]/strong/strong/strong/div[1]/div/form/div[2]/button
*** Keywords ***
Fill Customer Info and Continue to Shipping Method
    input text  ${E_EMAIL}  LOL@demacmedia.com
    input text  ${E_FIRSTNAME}  Hi Mike
    input text  ${E_LASTNAME}   Hi Jeff
    input text  ${E_ADDRESS1}  I didn't forget you Ayesha
    input text  ${E_ADDRESS2}  Don't feel left out Nick, you're the best
    input text  ${E_CITY}  Toronto
    input text  ${E_POSTALCODE}   M5B 1M4
    input text  ${E_PHONE}  This is Shopfiy, we accept ALPHABETS in a numeric field
    click button  ${BTN_ContinueToShippingMethod}
    wait until page contains  Shipping method

