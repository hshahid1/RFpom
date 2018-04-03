*** Settings ***
Library  Selenium2Library

*** Variables ***
${COLORVARIANT-2} =  xpath=//*[@id="SingleOptionSelector-Colour"]/div[2]/label
${SIZINGGUIDE_CLOSE} =  xpath=//*[@id="fit-chart"]/button
${WAIST-5} =  xpath=//*[@id="SingleOptionSelector-Waist"]/div[5]
${INSEAM-2} =  xpath=//*[@id="SingleOptionSelector-Inseam"]/div[2]
${SIDECART_CHECKOUT} =  Checkout   # xpath=//*[@id="minicart"]/div/div[3]/a
${QTYFIELD} =  name=quantity


*** Keywords ***
Select Color
    click element  ${COLORVARIANT-2}
    sleep  1s

Open Sizing Guide and explore sizes
    #click link  xpath=//*[@id="product-form-1092719476779"]/div[2]/div[1]/div[4]/a
    click link  Sizing Guide
    click link  Men's Tops

Close Sizing Guide
    click button  ${SIZINGGUIDE_CLOSE}
    sleep  1s

Select Waist
    click element  ${WAIST-5}
    sleep  1s

Select Inseam
    click element  ${INSEAM-2}
    sleep  1s

Specify Quantity
    input text  ${QTYFIELD}  2

Add to Bag
    click button  name=add
    sleep  1s

Proceed to Checkout
    click link  ${SIDECART_CHECKOUT}
    wait until page contains  Shopping Bag
